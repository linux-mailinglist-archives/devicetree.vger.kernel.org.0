Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 42D6458207F
	for <lists+devicetree@lfdr.de>; Wed, 27 Jul 2022 08:53:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229485AbiG0GxJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jul 2022 02:53:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229502AbiG0GxI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jul 2022 02:53:08 -0400
Received: from mail-il1-x132.google.com (mail-il1-x132.google.com [IPv6:2607:f8b0:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E83EBFD
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 23:53:07 -0700 (PDT)
Received: by mail-il1-x132.google.com with SMTP id n13so8449743ilk.1
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 23:53:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EVHPMBJtqujxX/VBmofI9sTd6D/nAjo4TTOcZSUMhtA=;
        b=gyAWVFXUV2K9BGouMBR57rE/DDHvORc3YKzyFA6kvcsUYwH0R1RzvccLA50GHzepQ8
         yXeP9I0hpk+J6K7KgRl66nhGerdhX17r5PZbCSI7fkxZNsnPkfn/qsXmePDZeGqQZILQ
         Q6Pkwltg7Qtgf89wyZwymgIp/eMf/jmj66gNCsHsXrrH2sidGjCTSXfcbI3gW7UQTNzn
         WlmyCsSWZXRRvosEQqXGMT/vltu4NPKLs+fxsimlAxdmAoZgDwPt4fJ/8BStluUNYaJn
         jOj1U+hmpCWWkGWlKSL/Z1uIpbUSkAlaraAPGPeTI2yAdVZFvubIopKTrvYivBOkbqMQ
         IURA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EVHPMBJtqujxX/VBmofI9sTd6D/nAjo4TTOcZSUMhtA=;
        b=bKEuxBzZjYrLr4FEg7fEeqBc6HjVGbLGR07AdKwvCR7CE578pywAbHHTzaLRzMORVS
         +XEp31/tpo+Q4IjTsmx21FAGWb9hGA/tTNX5zdmqM5oLdyJ76t+h5u9cbNVOYX24EY6i
         FbDE8qvdTb1b6gV//pKE+ZBXij+vkuYfX3WWyxzrvOUnSRrFR2+TgXyDlHjVXpRQ8QI3
         4o8jKpzUvr/JYF02nCFNkbvtObFmqGz7VbbyaUFhIh+r3NXSoQiP2uNwwh+wDq1AE5vQ
         mTt2FBQ3oOXkt6E4sA29qfzIqOJMml55QTPHdwRJlVRvOCjGu+8XszwlyQAt9SfiIPcN
         88Vw==
X-Gm-Message-State: AJIora/gDBzgVKpBFymczT3FHVuvgoX4ZoUtEWJGsxvORNuX/QFjWIa2
        fkjJNlfA5JkgtVWgRY2PB+K6qAhaCrG1ywyiWcwQKQ==
X-Google-Smtp-Source: AGRyM1trz0hjoHAOEd8djqlRxj55j0RShp1tsDTS/u4EmP/r1ce83f00Q6Bx/LPCahv1h04wegwx8mMUNs2TFsynZew=
X-Received: by 2002:a05:6e02:2186:b0:2dd:14dc:8049 with SMTP id
 j6-20020a056e02218600b002dd14dc8049mr8695401ila.79.1658904787366; Tue, 26 Jul
 2022 23:53:07 -0700 (PDT)
MIME-Version: 1.0
References: <20220723204335.750095-1-jagan@edgeble.ai> <20220723204335.750095-3-jagan@edgeble.ai>
 <e1d57de9-060b-bd58-2cea-85f41f75e7be@linaro.org> <CA+VMnFwNqm57StGj_JyTT2TM56uD-nFjxCekEH6aKYDMhEuxjw@mail.gmail.com>
 <360f7d11-96f4-369e-1289-6c9dc3c49ca4@linaro.org>
In-Reply-To: <360f7d11-96f4-369e-1289-6c9dc3c49ca4@linaro.org>
From:   Jagan Teki <jagan@edgeble.ai>
Date:   Wed, 27 Jul 2022 12:22:56 +0530
Message-ID: <CA+VMnFzAjif9Af0305B919Dwadgq7MUjiuKJQ3oXwZztTWNX5w@mail.gmail.com>
Subject: Re: [PATCH 02/22] dt-bindings: power: Add power-domain header for RV1126
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Elaine Zhang <zhangqing@rock-chips.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 26 Jul 2022 at 19:22, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 26/07/2022 15:44, Jagan Teki wrote:
> > On Sun, 24 Jul 2022 at 02:28, Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> On 23/07/2022 22:43, Jagan Teki wrote:
> >>> Add power-domain header for RV1126 SoC from description in TRM.
> >>>
> >>> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> >>> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> >>> ---
> >>>  include/dt-bindings/power/rv1126-power.h | 34 ++++++++++++++++++++++++
> >>>  1 file changed, 34 insertions(+)
> >>>  create mode 100644 include/dt-bindings/power/rv1126-power.h
> >>>
> >>> diff --git a/include/dt-bindings/power/rv1126-power.h b/include/dt-bindings/power/rv1126-power.h
> >>> new file mode 100644
> >>> index 000000000000..f15930ff06f7
> >>> --- /dev/null
> >>> +++ b/include/dt-bindings/power/rv1126-power.h
> >>> @@ -0,0 +1,34 @@
> >>> +/* SPDX-License-Identifier: GPL-2.0 */
> >>
> >> Dual license and a blank line,  please.
> >
> > Yes, all rockchip power includes (at least here) are GPL-2.0 what is
> > the issue with it?
>
> The headers are part of bindings and all bindings should be dual
> licensed, so they can be used in other projects.
>
> Of course if copyright holder does not agree to release it on BSD, then
> it would be fine as exception. Also would be fine from us not to accept
> such bindings. :)

I don't hold anything here to use dual-licensing. The only thing I'm
wondering here is none of the rockchip power includes (which are
merged) are using dual-licensing they simply have GPL-2.0 which is
used in BSP.  Let me know what you suggest?

Thanks,
Jagan.
