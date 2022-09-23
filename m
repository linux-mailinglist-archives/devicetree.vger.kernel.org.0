Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 123FA5E7C0A
	for <lists+devicetree@lfdr.de>; Fri, 23 Sep 2022 15:38:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229784AbiIWNii (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Sep 2022 09:38:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231921AbiIWNia (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Sep 2022 09:38:30 -0400
Received: from mail-io1-xd34.google.com (mail-io1-xd34.google.com [IPv6:2607:f8b0:4864:20::d34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11B1E139F70
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 06:38:27 -0700 (PDT)
Received: by mail-io1-xd34.google.com with SMTP id r134so10302821iod.8
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 06:38:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=t07WrpGgH9zQ3JsN1ciJKsWIHRrIB4n3PcU+0kooYgU=;
        b=7U1/AvCXmbHrsyviV8u9ugQwR90APbY1VPaflnkN9E5DFGAz2ecYtypdVFaOEmysx8
         NI1TZzn7TgBW4tvsnerC7NvM60M2DFgC+HpUuqpMFFKoLoTt3lo9w2EsFo5e0e3i6/xY
         +MqEB3TQNMeBuVYDQp2GcW55YeOL9jYhcRa6WicgCuveURS+1acAYYTPezQLDYxuefIb
         el8wqT8hfmHY5idHKijuuJWun1GF4aHvmWw8jij20hyoU6mpjKf6/ebulKGSRLWf66xX
         LmyR3ibZ9mxxfCbVliplWyrDBFxbYtQ4cYsFdUVc7YmuEbrHrjnsrbJfPJEbFlfcgXdJ
         Oi6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=t07WrpGgH9zQ3JsN1ciJKsWIHRrIB4n3PcU+0kooYgU=;
        b=xISV1v9+8SyqhA6hgQfd4kttwMDJC5C3lkQMMMulp5e1hLF1JWpzcI1fA66fxrDJ5i
         mKvZK6/dDWtrO/PsQehTQrJsZvTtMR7aMtcoxXdkqZuFLyRmG3RQsGs5xRRyaRG/SYgS
         Hq6JxpAPRwCvFUbDP+3Wsbt1e5mY2YRkyzuj+OhQBQUuxJK8iQtdRL5hz5xI8NGvb4r8
         0VJXayDX4JucWj8h7V8nO9WvIwTmZP+A2rWlpNe63kkCpFxisfYo98C2dXqnQ8bieIRW
         0Arl7BtpBb9bb6WXasEdG0c/e0Dvx0L0rQOhEPq+TEFwDRye6I4SovxkO6XyUwpwgfDC
         N0HA==
X-Gm-Message-State: ACrzQf0Dp5Ev0332g488NRN7iOGImZgeSjiWRrbPSeUpBKeO/8OlLZQ9
        jBcDAgypa7CpSXhwQ1aBEuhLmPm10xdncX43j3Mxdg==
X-Google-Smtp-Source: AMsMyM7+IyjoXeiW8RnHRVF3z7riQUHGobH4BHuPZ+W9VikWPAzSOPcwTCdcDKYLRjLeePvphhqOawnmhrHuwWuaCG0=
X-Received: by 2002:a05:6638:d51:b0:35a:5808:41ff with SMTP id
 d17-20020a0566380d5100b0035a580841ffmr4749975jak.45.1663940306854; Fri, 23
 Sep 2022 06:38:26 -0700 (PDT)
MIME-Version: 1.0
References: <20220915163947.1922183-1-jagan@edgeble.ai> <20220915163947.1922183-7-jagan@edgeble.ai>
 <2439124.NgBsaNRSFp@phil>
In-Reply-To: <2439124.NgBsaNRSFp@phil>
From:   Jagan Teki <jagan@edgeble.ai>
Date:   Fri, 23 Sep 2022 19:08:16 +0530
Message-ID: <CA+VMnFx8FHEqqbmv-tWxostrMd+yDadr5yaJXXJUeE9h0C2M2w@mail.gmail.com>
Subject: Re: [PATCH v5 6/6] ARM: dts: rockchip: Add Rockchip RV1126 SoC
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jon Lin <jon.lin@rock-chips.com>,
        Sugar Zhang <sugar.zhang@rock-chips.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 23 Sept 2022 at 19:03, Heiko Stuebner <heiko@sntech.de> wrote:
>
> Am Donnerstag, 15. September 2022, 18:39:47 CEST schrieb Jagan Teki:
> > RV1126 is a high-performance vision processor SoC for IPC/CVR,
> > especially for AI related application.
> >
> > It is based on quad-core ARM Cortex-A7 32-bit core which integrates
> > NEON and FPU. There is a 32KB I-cache and 32KB D-cache for each core
> > and 512KB unified L2 cache. It has build-in NPU supports INT8/INT16
> > hybrid operation and computing power is up to 2.0TOPs.
> >
> > This patch add basic core dtsi support.
> >
> > Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
> > Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
>
> hmm, this series doesn't really provide any board for the rv1126,
> so we essentially don't even get any compile-time tests, as nothing
> is using this dtsi. Can we please change that?

Yes. Got it. I will send these dtsi and board dts file patches together.

Thanks,
Jagan.
