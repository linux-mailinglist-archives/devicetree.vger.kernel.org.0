Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C44CF757964
	for <lists+devicetree@lfdr.de>; Tue, 18 Jul 2023 12:41:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229780AbjGRKlC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jul 2023 06:41:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229861AbjGRKlB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jul 2023 06:41:01 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51FC1E56
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 03:41:00 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-51e2a6a3768so7910303a12.0
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 03:41:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689676859; x=1692268859;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ySxdaKxinHnxtok4kPt2QKJLKgvXBmWckhE525HMK+o=;
        b=vfGx/0V2Zf4RLi7t0d8MpAZCz1qK+SGlszU0rPsdz+vUGmouHLHXSIAJzh44d26DdB
         t7eUT4IbSlC8Z1FSubfIWQyWvj8U2RTueelqtPKZ8JxwhtFdLS1MgMa/FuvLP1DU3HeK
         i44LniUrG8Lugmar3VNozZ7/U1sJ0IjLYnYHgYbf1mIjZVRrOKSCpoAlHNJhxC9cJyZ+
         2jf/hPsW60P4YFVBNGCIOFNwGsHus81ZuGj14R3dk/88UmrYtrUtcCKOhM85OoMb1wN6
         FGtgtDMFftfQK4/A5rtCq0o1AQju6cUBubPPNn8YLsHvO7bzr94rtHi2XEJmZc4Vrdkv
         h1sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689676859; x=1692268859;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ySxdaKxinHnxtok4kPt2QKJLKgvXBmWckhE525HMK+o=;
        b=QX/N8/I/gp8s0FuOzoXdy0eAPESPrJMkbSp6A8GVi85Cg8VbdqQqhw8GxLcSxLYPXw
         bDAshrbUJYnJskQcpmpdlrXfKGWBTvbUMhbpf34sFZTxiKVOazr9OsWAHWG8D4R4uV8G
         V5Z09kUy66kZyUXIxuFuUoLu/IoxZQsxd6FQPn2zuEN3yN9iE/zXTHByRWNHlB4bSDpx
         bKSznm8MiCuufQ7X/+/xQPEV4eo+Eyg4hjwHTkKoczcZVsLgwHOZMu26gAgXAYmwcPPF
         lS5Pf3U2wU0ajPC6D1w413jyqGGxlU0IZmzmmlaoyDHLfu6j+BChXWAa5bGlGGLJOhR+
         bEPA==
X-Gm-Message-State: ABy/qLYdfU8lndIZbppAf+DIjpZLYUjS521UP6zvxAft3uC3JDhnmRAE
        dutlOoLErz88kZS9Xav/T7yMu+C0mItNRNXgBZgJPw==
X-Google-Smtp-Source: APBJJlEvYdzJVIwj+oR7D5wPofb9jasp8U17KbQHSV3MLL5ISPlscbIoJIxpEjW+Yg/3OvEUG3JiyA==
X-Received: by 2002:aa7:d8d4:0:b0:51d:8ab1:5df4 with SMTP id k20-20020aa7d8d4000000b0051d8ab15df4mr13464444eds.21.1689676858881;
        Tue, 18 Jul 2023 03:40:58 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id n17-20020aa7c791000000b005215eb17bb7sm1009515eds.88.2023.07.18.03.40.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jul 2023 03:40:58 -0700 (PDT)
Message-ID: <8e368283-b921-2e92-0aa6-204c0f17c8d7@linaro.org>
Date:   Tue, 18 Jul 2023 12:40:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 1/1] dt-bindings: display: bridge: tc358867: Add interrupt
 property
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
References: <20230718084411.1189831-1-alexander.stein@ew.tq-group.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230718084411.1189831-1-alexander.stein@ew.tq-group.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/07/2023 10:44, Alexander Stein wrote:
> This bridge has an interrupt line for event signaling. Add the
> corresponding property.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

