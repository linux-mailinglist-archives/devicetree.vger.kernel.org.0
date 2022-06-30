Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C5F58562114
	for <lists+devicetree@lfdr.de>; Thu, 30 Jun 2022 19:18:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235463AbiF3RSZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 13:18:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232034AbiF3RSY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 13:18:24 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D43713F67
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 10:18:22 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id y16so11024807lfb.9
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 10:18:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:user-agent:in-reply-to:references
         :message-id:mime-version:content-transfer-encoding;
        bh=h6a1dWXChTwCKwnW/kNd1JMMGxhKCAfODxl0ifUihRY=;
        b=yfS9EQ2f30wjZUo7Mmyex+du61oijkfvbfouHHFq7LGnTU01gHm0lXJwJs4rqk6hp3
         YrCSg3eXuvUnvtgMFcKtSKl6fnLVRof+YoZEJ/ftdo7q1NDXtXEQDb7awy30FV9wr4nG
         +61MbaP7BkTcZMOaDaCn0mTw+RosCRlUhn/DtO/j4Oolpx0KSI9esJAt9wspCIGDHa+4
         OBtz4dDEIOWWl5/EZ2vPCRLEIegpbEtz5cChBXRZSy6wu2g27NqtWA0F3X+TT0oR14Gk
         WPXVR7vL7LPd7+qRrQzjxB0/TstzVp5W1DFrpWr7wX8U1BrqkNP+9QeD3T6XBNx5bO23
         b23w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:user-agent:in-reply-to
         :references:message-id:mime-version:content-transfer-encoding;
        bh=h6a1dWXChTwCKwnW/kNd1JMMGxhKCAfODxl0ifUihRY=;
        b=3vY+W9nWjygUf9ZkbX66TuzAjiTjS65JB4P2/Hp7Of6rAaVe2LOcm/sXHl6ghu/g6C
         g1/tg838/9TwDJ6oTgX8QreAlrG0oPKPm8LjV9ye9946pROKDJ76SPfzkQUpWSmPK8Sg
         6SS9fBY3+O6GZEK5IlZV9srFEvzUP3GkwzphSEomLnwVgw8f31kDt3Y5tWxtNSN4E/5u
         2v45q411DydlIhcS708rzPEaK796kSyW3/MFcHwZWS0reoQ6hU+0eTJQFAC4FTdw4MfQ
         CIZzCJuHMvmYuKqnCkA34qQbG+9b8pv+qOQTEojMIFLLeNX4KFFSdRyvXOTPi64Tt6w0
         iW3w==
X-Gm-Message-State: AJIora/uZ/jpeYKxJVZVbFtJUwznarx32Q7REvUSSgbKGq0xoNy269qk
        5DZoKCjAvIJb0HnE2OKx3j9POQ==
X-Google-Smtp-Source: AGRyM1s8R8bDIioUiYfE/tW3QennF5sAfDl/cwAX8X6a6afK/dqg3TKlgCkCUM1zaXwFsLBpgZdffQ==
X-Received: by 2002:a05:6512:22cd:b0:47f:6e84:f51c with SMTP id g13-20020a05651222cd00b0047f6e84f51cmr6067710lfu.175.1656609500594;
        Thu, 30 Jun 2022 10:18:20 -0700 (PDT)
Received: from [127.0.0.1] ([94.25.229.210])
        by smtp.gmail.com with ESMTPSA id v10-20020a2ea60a000000b0025bf92bd024sm348973ljp.102.2022.06.30.10.18.19
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Jun 2022 10:18:20 -0700 (PDT)
Date:   Thu, 30 Jun 2022 20:18:02 +0300
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>, robdclark@gmail.com,
        quic_abhinavk@quicinc.com, sean@poorly.run, airlied@linux.ie,
        daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
CC:     quic_mkrishn@quicinc.com, swboyd@chromium.org,
        bjorn.andersson@linaro.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, bryan.odonoghue@linaro.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_7/7=5D_dt-bindings=3A_msm=3A_dsi=3A_Ad?= =?US-ASCII?Q?d_missing_qcom=2Cdsi-phy-regulator-ldo-mode?=
User-Agent: K-9 Mail for Android
In-Reply-To: <20220630120845.3356144-8-bryan.odonoghue@linaro.org>
References: <20220630120845.3356144-1-bryan.odonoghue@linaro.org> <20220630120845.3356144-8-bryan.odonoghue@linaro.org>
Message-ID: <1FDC4CED-AFE7-4D68-9D48-58751DBBF4F6@linaro.org>
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



On 30 June 2022 15:08:45 GMT+03:00, Bryan O'Donoghue <bryan=2Eodonoghue@li=
naro=2Eorg> wrote:
>Add in missing qcom,dsi-phy-regulator-ldo-mode to the 28nm DSI PHY=2E
>When converting from =2Etxt to =2Eyaml we missed this one=2E
>
>Fixes: 4dbe55c97741 ("dt-bindings: msm: dsi: add yaml schemas for DSI bin=
dings")
>Signed-off-by: Bryan O'Donoghue <bryan=2Eodonoghue@linaro=2Eorg>

Reviewed-by: Dmitry Baryshkov <dmitry=2Ebaryshkov@linaro=2Eorg>


>---
> =2E=2E=2E/devicetree/bindings/display/msm/dsi-phy-28nm=2Eyaml          |=
 3 +++
> 1 file changed, 3 insertions(+)
>
>diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-28nm=
=2Eyaml b/Documentation/devicetree/bindings/display/msm/dsi-phy-28nm=2Eyaml
>index 9ecd513d93661=2E=2E3551e166db966 100644
>--- a/Documentation/devicetree/bindings/display/msm/dsi-phy-28nm=2Eyaml
>+++ b/Documentation/devicetree/bindings/display/msm/dsi-phy-28nm=2Eyaml
>@@ -40,6 +40,9 @@ properties:
>       - description: dsi phy register set
>       - description: dsi phy regulator register set
>=20
>+  qcom,dsi-phy-regulator-ldo-mode:
>+    description: Boolean value indicating if the LDO mode PHY regulator =
is wanted=2E
>+
>   reg-names:
>     items:
>       - const: dsi_pll

--=20
With best wishes
Dmitry
