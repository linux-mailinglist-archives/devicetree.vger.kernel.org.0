Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 561A75620DA
	for <lists+devicetree@lfdr.de>; Thu, 30 Jun 2022 19:07:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229531AbiF3RHu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 13:07:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236341AbiF3RHs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 13:07:48 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D1FC3ED2B
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 10:07:47 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id a2so34883258lfg.5
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 10:07:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:user-agent:in-reply-to:references
         :message-id:mime-version:content-transfer-encoding;
        bh=5h9m2r1as3dVO5Ej+4ZiJew20CUmK76LyEozgtg6ehk=;
        b=RpClWCfbqMGu2IaKWsyy/R7HM5UFKNt5IfpnOqCRNW7IeAGO0hOQ8gg3W3l8GwANGS
         DndKo5NBBpM7M4OzjLhDl4yyHG1a2jZ4FTPnoNrWLzvsn56ATwrLWpSkSt5wSv3rKAzi
         b1UlsdO/ZFFZxcP7I301pb460P5tLR90qusgBA9D80fQZCRHaYD/f/Mndrmv46pmuxKa
         qEzW8NhW1huy78tXn0ahmqTf/fRTK83e6KpRM2Og0b/4LkNTnPkTIS2PQ3Ww9KSWtv6m
         aaO7S3XYrMgcSvL2T3iBfBcprAhBJamvksBcnSLMCPD8Pwrhs6FSQnvorU6rgaqtRhRa
         q6qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:user-agent:in-reply-to
         :references:message-id:mime-version:content-transfer-encoding;
        bh=5h9m2r1as3dVO5Ej+4ZiJew20CUmK76LyEozgtg6ehk=;
        b=ynKQHF9L/3fCwIjugW4d/mcl05zupdLVqV+EOuOgfRa8vGH8+f2/Yw+loZGhpEiJKy
         sU+ruPyBtrk12F8VUlB2Yok+KEqEMsIOllPukVd2LI3o/ZDgRlgfb4EapN1q6c/XJb5z
         ssI9jk3AYk996h1ywG3DoR4wPIA69NtzHQLonn3jCbE266z8zk1fnXWCRh6PYTAwssvn
         HFsQj6xgk+YL1Y4xUBYyfRBeC5VM1iVQM2+/NTAExEM0/8nOzHTj3q5x4dp8s5D+PXDU
         JB1ZjqJCxNR0hMjzzOpiFHy/ILcus7pgYrRylfH0hIa0E1n81uD/kRrnbJG94DJIXVXB
         KgWg==
X-Gm-Message-State: AJIora9U64DfRxQAVUxhbKJKvUmCMl03tesiGEGYRm0koJ8Fo3PRZg3e
        x/UoWTRTRDN8qepbqnFrFIDgSA==
X-Google-Smtp-Source: AGRyM1sYxOrvJE5VNAQuV35nuPVYN8Uc4ZOlo7XwTERwo1oW9GaijikgQCz+byZALgT7XFQduQmvEg==
X-Received: by 2002:a05:6512:3e0e:b0:47f:6a95:9b98 with SMTP id i14-20020a0565123e0e00b0047f6a959b98mr6372997lfv.177.1656608865898;
        Thu, 30 Jun 2022 10:07:45 -0700 (PDT)
Received: from [127.0.0.1] ([94.25.229.210])
        by smtp.gmail.com with ESMTPSA id c7-20020a19e347000000b004791fc12f6asm3194067lfk.46.2022.06.30.10.07.43
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Jun 2022 10:07:44 -0700 (PDT)
Date:   Thu, 30 Jun 2022 20:07:41 +0300
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>, robdclark@gmail.com,
        quic_abhinavk@quicinc.com, sean@poorly.run, airlied@linux.ie,
        daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
CC:     quic_mkrishn@quicinc.com, swboyd@chromium.org,
        bjorn.andersson@linaro.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, bryan.odonoghue@linaro.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_2/7=5D_dt-bindings=3A_msm=3A_ds?= =?US-ASCII?Q?i=3A_Fix_operating-points-v2_constraint?=
User-Agent: K-9 Mail for Android
In-Reply-To: <20220630120845.3356144-3-bryan.odonoghue@linaro.org>
References: <20220630120845.3356144-1-bryan.odonoghue@linaro.org> <20220630120845.3356144-3-bryan.odonoghue@linaro.org>
Message-ID: <6334180D-C29F-4EB4-BD2D-1F832E9FF990@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 30 June 2022 15:08:40 GMT+03:00, Bryan O'Donoghue <bryan=2Eodonoghue@li=
naro=2Eorg> wrote:
>The existing msm8916=2Edtsi does not depend on nor require operating poin=
ts=2E
>
>Fixes: 4dbe55c97741 ("dt-bindings: msm: dsi: add yaml schemas for DSI bin=
dings")
>Signed-off-by: Bryan O'Donoghue <bryan=2Eodonoghue@linaro=2Eorg>


Reviewed-by: Dmitry Baryshkov <dmitry=2Ebaryshkov@linaro=2Eorg>

>---
> =2E=2E=2E/devicetree/bindings/display/msm/dsi-controller-main=2Eyaml    =
 | 1 -
> 1 file changed, 1 deletion(-)
>
>diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller=
-main=2Eyaml b/Documentation/devicetree/bindings/display/msm/dsi-controller=
-main=2Eyaml
>index 717a5d255ffe4=2E=2E101adec8d9152 100644
>--- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main=
=2Eyaml
>+++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main=
=2Eyaml
>@@ -137,7 +137,6 @@ required:
>   - assigned-clocks
>   - assigned-clock-parents
>   - power-domains
>-  - operating-points-v2
>   - ports
>=20
> additionalProperties: false

--=20
With best wishes
Dmitry
