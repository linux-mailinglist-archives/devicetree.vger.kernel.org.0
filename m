Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 91E1E66359A
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 00:44:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237943AbjAIXoa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Jan 2023 18:44:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237922AbjAIXoN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Jan 2023 18:44:13 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F2A93FC94
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 15:44:07 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id bu8so15610541lfb.4
        for <devicetree@vger.kernel.org>; Mon, 09 Jan 2023 15:44:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pymBsysiRj4PWzpdrYvrGh6WCe9aRMDyVw4Cchu5q1Q=;
        b=THWK7AP+s7+Zb1Lq2jA9fh9HZw2EhVfxFT9lw68Jun80sZouyMv0hzuBM4gUSFOQ8b
         O8J2qNrkf/y2btAeA92LsJoQYXEofkK873PwSsO86R4oAkO260Pb+7OE6SJ3Z6fSSXwF
         bEWBIrH2Ci3XCDoNGojzGKodmmhv/1eG2gpWMC0lu+V/9raJSrPjt7qWkRzmotTEmjDx
         SeDMrcmbJx1FUi5TH273GJenI6PFeTM7Klvx4gmys/rqfMXSVu6p6Xhne82PpODMcy5n
         cSpJgCVFsEHWOM5hHFCT6VoJ4sAcjHH+2YE3tAuaqgoIogt6uAmNzW8nxnwKhrhUoM+n
         B70A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pymBsysiRj4PWzpdrYvrGh6WCe9aRMDyVw4Cchu5q1Q=;
        b=olMV+cr7qlAGCJGk01J9pU5cLtFLalucpP/pg84zJKq9dQ0SOjehUamPfvB2SmXYWx
         5HGhaRV2dBgHHnO/LW6krxlljQfhciP5cIHrnV0tzV5w0E3ufs6wwZWFy6tFnKtOjb7d
         b7ne2yisrXoyNLGPJs7wPap41lRnasly+U1pGqURLMX7dGZf8sPrd7+L8ojnXE7i6JB7
         5vyhe+Sk9mTgEM7bv45EYD1vuGwBxabBttvyaqwtEvkMNnbXnHFxr5MHATOqi7eRfEYr
         +VmWsVyNO18ZOLO7c0gEvVlDU57fpvsRCdJDI0nEtQ1xgT1hRG4NJu1uGrENwYJW7r3d
         QwJw==
X-Gm-Message-State: AFqh2kqGCjl7CBEqGwXT2/1ofypG8O5hMXmNDn5AgOeyyDTwkM5QOEpK
        YR6YalmblBJqLZocCih3p4rQqw==
X-Google-Smtp-Source: AMrXdXtIVvzkj4fVEFNF2MrIz3KR+4VgtYza83XbuyEDgYfxykegrPPYtCARasfAXCCWjObpRzqQhg==
X-Received: by 2002:ac2:5454:0:b0:4cc:8985:b565 with SMTP id d20-20020ac25454000000b004cc8985b565mr216605lfn.30.1673307847139;
        Mon, 09 Jan 2023 15:44:07 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id s9-20020a056512214900b004b5a4cf69dfsm1835255lfr.261.2023.01.09.15.44.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Jan 2023 15:44:06 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Del Regno <angelogioacchino.delregno@somainline.org>,
        Loic Poulain <loic.poulain@linaro.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH 1/2] dt-bindings: display: msm: drop redundant part of title
Date:   Tue, 10 Jan 2023 01:43:51 +0200
Message-Id: <167330408778.609993.10640569681810813503.b4-ty@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221225115925.55337-1-krzysztof.kozlowski@linaro.org>
References: <20221225115925.55337-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Sun, 25 Dec 2022 12:59:24 +0100, Krzysztof Kozlowski wrote:
> The Devicetree bindings document does not have to say in the title that
> contains "DT properties", but instead just describe the hardware.
> 
> 

Applied, thanks!

[1/2] dt-bindings: display: msm: drop redundant part of title
      https://gitlab.freedesktop.org/lumag/msm/-/commit/e90c380ea283
[2/2] dt-bindings: display: msm: drop unneeded list for single compatible
      https://gitlab.freedesktop.org/lumag/msm/-/commit/7ad6586652fa

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
