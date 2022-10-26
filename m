Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6FEE160EC02
	for <lists+devicetree@lfdr.de>; Thu, 27 Oct 2022 01:04:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233551AbiJZXE0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Oct 2022 19:04:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233416AbiJZXEZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Oct 2022 19:04:25 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BC44286E8
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 16:04:24 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id r6-20020a1c4406000000b003cf4d389c41so1804571wma.3
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 16:04:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8J4HR94C6CytlEgPPH3UzuFzQgZKA2q0qAfjJCCQDVo=;
        b=KMOGWKe5pbx2OHD7SeQZ+vmsD5Z2cjqHBl4dT3rpRSXgUKsb31bLjR24AVTRsuktzO
         MkV+mJppJ2y7o7eOpaKmY6k2uMQlYbRi08g5JqHaX3RgoOgVfQEo5bWkKsSBq8AWKJkW
         ladODhW1gISm56tz7INFlETjArkfIa6SD41VI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8J4HR94C6CytlEgPPH3UzuFzQgZKA2q0qAfjJCCQDVo=;
        b=74EBGx6SEJYb3FfCr0QgrfHn+RhuRwFGtDCxeyeu7YQdDtwZDz0UPLP4xTxNWkCWIb
         Da4uzzQjSLjHPODWdlUVX3T5HNjdc3/V34xjdacC/SO4jYbJDG61meI2M5WVhWgtv01c
         iVXhbyImoIP6fUGwWOsD/6gkg5Yaqbyqwje23C2Y4GyLytSHckwBxwzq9RslcliRWdgu
         3kNMlFz5YZ4m0RcL7q3RpsufXu7ud3rKVTxc+bXX9mzi1TcPMxL6ZkHsLf9yXzSwTsYs
         j1oO2aKaNgogM2lAakuK5dDABVPr/SGhL5StSRo2g9UEqFua/gV35rXCS+gB+3hiN2xy
         52SA==
X-Gm-Message-State: ACrzQf3uiP0MVWxBPq7+EPh8kyb9beztHpOTSW3wOEdX+UULtPylFjsg
        cpq9poDUv+qFkmM07/4DRZ/nf3zN+kseK2mB34LMP7BZCgJOdw==
X-Google-Smtp-Source: AMsMyM6n1CDhA06FDaawyOojqQup/+/t9ECUWMEIUXhTkL0k29z3MqZbywYRmKKHEleWjnQwul0R5/hki+RpLhSWMEw=
X-Received: by 2002:a05:600c:1d1a:b0:3c6:d715:2d69 with SMTP id
 l26-20020a05600c1d1a00b003c6d7152d69mr3941641wms.145.1666825462508; Wed, 26
 Oct 2022 16:04:22 -0700 (PDT)
MIME-Version: 1.0
References: <20220930220606.303395-1-jwerner@chromium.org> <8489ce0a-3278-5509-4f82-f3d9d5ddd4c0@linaro.org>
In-Reply-To: <8489ce0a-3278-5509-4f82-f3d9d5ddd4c0@linaro.org>
From:   Julius Werner <jwerner@chromium.org>
Date:   Wed, 26 Oct 2022 16:04:10 -0700
Message-ID: <CAODwPW9S+6Qh1zMxzXWFkd6d1kdOWpTOe4S1sZB8hvQ-36MbNA@mail.gmail.com>
Subject: Re: [PATCH 1/4 v5] dt-bindings: memory: Factor out common properties
 of LPDDR bindings
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Julius Werner <jwerner@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Dmitry Osipenko <digetx@gmail.com>,
        Doug Anderson <dianders@chromium.org>,
        Jian-Jia Su <jjsu@google.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
        USER_IN_DEF_SPF_WL autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> For the future, write cover letter which describes why you are doing
> this. You explained the "why" some time ago in responses, but all such
> information should be in cover letter (plus the applicable part in the
> individual patches).

Sorry, I did write a cover letter here:
https://lore.kernel.org/lkml/20220831013359.1807905-1-jwerner@chromium.org/

Are you saying I should have kept resending the cover letter on every
new iteration of the series? I thought since we were already
discussing detail questions and there seemed to be no general concerns
on the series as a whole that wouldn't be necessary, but I can keep
resending it next time if you prefer.
