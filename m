Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9431967D4D2
	for <lists+devicetree@lfdr.de>; Thu, 26 Jan 2023 20:01:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232303AbjAZTBO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Jan 2023 14:01:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232169AbjAZTBN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Jan 2023 14:01:13 -0500
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D16A3279BA
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 11:01:11 -0800 (PST)
Received: by mail-ej1-x631.google.com with SMTP id hw16so7621233ejc.10
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 11:01:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YoTZ2Jk2oo1sJu0z9U4fY49QhdA4VbOjy5AeWub00mg=;
        b=zFCkTttsnqQaCwrfwAGBQ+ACq42jLXqAWnuY3wlE2cC4ZthG4+0G+HgJQQeQumj6uA
         9grSD+txpZ1qgxQrl4PoeyYbQO6FjTtbmqIkKCPQZGCu1+gfh7DhFVGQZPdJGYoZuZlY
         Y1ybkASLuGOK/ukJyFzJ2ODZXfomJFWKEQUo1tstN3N/ZXdKMllxHG3xhEm1K5pbBkO8
         idQ8LmnhVupZYF4X7bmAb0wnQI9Ew/sgMTXVBo6n/Y4UQTng0pPdLR9bDxFv1X8npW8A
         tJ7iTu9f/3sFqLIHdeqpnqiycVHkZg4oxaByZ6McSd5oeXHsuiYfw1yLm4A2Zj7PW7Ej
         O4Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YoTZ2Jk2oo1sJu0z9U4fY49QhdA4VbOjy5AeWub00mg=;
        b=eJqRJ/Q9b+VgPIwGSKJNEBfclwC2DpA+vhNU4Tv2mJJ1IeIjXhtw4fhx+OrF4hxAbr
         KRPQmtogc/Iq8wOVoiJ2LAoHbWY3dzfwsR31tS8CHhk44Yw7xfpEpBB60OxQitlzqrV0
         B7Hj+OuxU9HWD3Cy0xQMTssy5vYCdKBgnYTr8cs5pcJeNZRgNWuiFRei9LJcQeMvxG/n
         FoCfbxFSNUL776b5YMalkPQkHI7WbYD2F4Ntjtg2pcCrY/Ng9MPAjdvWxFFgS6le1w2G
         mOwD0pSU9hENVSD6kF/YKBTLy66p09VQUmCXCOco88ryLrBrV4qG1wf/PZKoWqk5jy7O
         ZB5Q==
X-Gm-Message-State: AO0yUKWE+qUHHOg0w9ry1fIQxFTmWTbkeMC8EpEgoDfk6EBEM1NeO5Pc
        CpoinCij1kggBN/ldl2DYEj79A==
X-Google-Smtp-Source: AK7set8CoXdSqRs9pJYWdfzKjq27yB4L36ss7j8AdDvAqlKH7VBunIDH1x18EQGPeIozH4cWpvZp0Q==
X-Received: by 2002:a17:907:205a:b0:878:4e5a:18b8 with SMTP id pg26-20020a170907205a00b008784e5a18b8mr4548339ejb.66.1674759670455;
        Thu, 26 Jan 2023 11:01:10 -0800 (PST)
Received: from eriador.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id o25-20020a1709061b1900b0084d4e9a13cbsm974982ejg.221.2023.01.26.11.01.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 11:01:09 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: Re: [PATCH 0/4] dt-bindings: display/msm: more dsi-controller fixes
Date:   Thu, 26 Jan 2023 21:00:54 +0200
Message-Id: <167475959093.3954305.15907989272487832068.b4-ty@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230118032432.1716616-1-dmitry.baryshkov@linaro.org>
References: <20230118032432.1716616-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Wed, 18 Jan 2023 05:24:28 +0200, Dmitry Baryshkov wrote:
> A small set of patches to go on top of Bryan's changes to fix a small
> number of remaining issues.
> 
> Dependencies: [1]
> 
> [1] https://lore.kernel.org/linux-arm-msm/20230116225217.1056258-1-bryan.odonoghue@linaro.org/
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: display/msm: dsi-controller-main: remove #address/#size-cells
      https://gitlab.freedesktop.org/lumag/msm/-/commit/65e835945aab
[2/4] dt-bindings: display/msm: dsi-controller-main: account for apq8064
      https://gitlab.freedesktop.org/lumag/msm/-/commit/2f8e5f8b2ea4
[3/4] dt-bindings: display/msm: dsi-controller-main: allow using fewer lanes
      https://gitlab.freedesktop.org/lumag/msm/-/commit/2fd5293df88d
[4/4] dt-binbings: display/msm: dsi-controller-main: add missing supplies
      https://gitlab.freedesktop.org/lumag/msm/-/commit/05c578d51624

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
