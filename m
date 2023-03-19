Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 068C26C0545
	for <lists+devicetree@lfdr.de>; Sun, 19 Mar 2023 22:11:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230194AbjCSVLh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Mar 2023 17:11:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229999AbjCSVLg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Mar 2023 17:11:36 -0400
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com [IPv6:2607:f8b0:4864:20::1136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B86D1199FE
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 14:11:35 -0700 (PDT)
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-536af432ee5so193531437b3.0
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 14:11:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679260295;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SCBEWFUqo3M96ruap0XiCnD1dPN396JYXN1LMBXdah8=;
        b=pOjxIZDoSDxyVInpoSqZXwsMbabZiUEZT3+EDL7W+xgvxOyEX/uufNI8tTNpbCR6Pg
         OYWApboi8gAEfnmHQkt07klSWsI0FkuJFiE0uQdS6wFNxMnDOu/f/t3hz8V6gkiEXaOR
         99NS3izj6qEZJFOnBUCrxNCcbbdhKZYzY60pm5WcHrf2MtIlRGC8FPqqLKUr+p4LXGon
         vqIB/8KNapD+i9gvh+BmFTNY9D/jtZXuVnsZeg170eD5NRXXzu1bb0skFibrY9dBeypH
         61jmczK6+sa8WmkodzmiFDNPSzAnljSJGXsn/Wn04yDeGFHWqo522JNio014R6vZde/f
         gfJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679260295;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SCBEWFUqo3M96ruap0XiCnD1dPN396JYXN1LMBXdah8=;
        b=5WcVDH0g58BMsQmc5sfFvGbDP/Y5Zz66qn5n8h4vdcl/bdaRNTVOxSqsK1rbR3c8Jd
         LkWRJOA/tMQ/rUIQHWZtSLeqLmIAaR3/Ed2AiDIXnZT4FnHP1Xkqda3yZQaDqjXhFXX1
         iFN1JjwOLb2Z+cY6Kr4FSeuKHY3rqGplYGpCgwctaOXKOtU/QLn74qUOeK2RC3lv3uI9
         Pas7IpE/2S24oGJN4L0NpmMQkKBkJvgUq9YfQ5W6tgUZUy9rh1pqljD6wkxFjdDZbFnO
         NCuRlWs9Jq0jIkQtOmcSbCaaR8Bgz75S4nM5sY3Jj6T13zVIR+V8XyTy3tRpScxirAra
         FZnA==
X-Gm-Message-State: AO0yUKXPKF3SX0zP4Ibu4HB8zJmxEmZcDR3YbHCiyWPjMpbQo5aAKnzD
        39c+/cZc/Lw+pm3/4EpKrlNlmjPFdeHT39igwhzyiA==
X-Google-Smtp-Source: AK7set9eoUx7qgIYRZRoQCSpRHlHZQ5KezzMNsl9Zc45m72hUWSJSztTdC3yGlgg0FCpvBoeJvPtM20Z2A1axVFf7sw=
X-Received: by 2002:a05:690c:d88:b0:544:bbd2:74be with SMTP id
 da8-20020a05690c0d8800b00544bbd274bemr6686965ywb.4.1679260294949; Sun, 19 Mar
 2023 14:11:34 -0700 (PDT)
MIME-Version: 1.0
References: <20230317225707.1552512-1-sre@kernel.org> <20230317225707.1552512-3-sre@kernel.org>
In-Reply-To: <20230317225707.1552512-3-sre@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 19 Mar 2023 22:11:23 +0100
Message-ID: <CACRpkdbm+4K5H5mcFH8K-TZ-m0Y=EA3wjdRc_S1EgCjgKeVYJA@mail.gmail.com>
Subject: Re: [PATCHv3 02/14] power: supply: core: auto-exposure of
 simple-battery data
To:     Sebastian Reichel <sre@kernel.org>
Cc:     Matti Vaittinen <mazziesaccount@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Mar 17, 2023 at 11:57=E2=80=AFPM Sebastian Reichel <sre@kernel.org>=
 wrote:

> Automatically expose data from the simple-battery firmware
> node for all battery drivers.
>
> Signed-off-by: Sebastian Reichel <sre@kernel.org>

Looks good to me!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
