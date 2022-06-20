Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 19D1E5524B4
	for <lists+devicetree@lfdr.de>; Mon, 20 Jun 2022 21:42:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245092AbiFTTl7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Jun 2022 15:41:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244982AbiFTTl5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Jun 2022 15:41:57 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F7981C905
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 12:41:55 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id b8so16476415edj.11
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 12:41:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BD2K7uCUP5dok9v4o4ZAMCXR8riujRp1lXhSmgAvB6k=;
        b=qYp7jWPBOQveUWXbMZbeVbgD0pvgR6tUgsDeYpg/GOmLU1qHibic5/2o0hmmlHZEhR
         FR7ja/xAwd6q3GluLtHQpfgMNn631a1kjrm2q6gnMIPm7StTpxnYLzrpA0u1N2cqNPo/
         6FfOLdjrymRE0ytAL2W2jF/SJFmLWQdL55JK6Bv1z3ZzndzCFEERLrHW4AXlRi4+hfYL
         vsTd5CsZsHoTU/4guDufko7ndWGSW95HUBfe5ay2UxYN/9dkfq2DkRghYAyH5TXv3iov
         Ui7vV2qIagW3YCMCvjDDdUbWOV05RYs/IBlvGqNglSpw3gvd6Nn+2e4qKhsBbXCdPMdE
         3X4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BD2K7uCUP5dok9v4o4ZAMCXR8riujRp1lXhSmgAvB6k=;
        b=lRLY4jvkzwiNn6T3HuV/F0L7PI/3otHoWXNmpEqSYhmr3eQnBJ3+PZAXW7sRJ41luq
         sudvZwT2L0I4dalFaX5kNcgc8jogSsBbuUSXB7jVf3MGPJII6jQWW5PNLVVFcEVYdZIX
         v8qvZjn5RRtlac78kD1HUjb48GZpOpXVVrXOTOV0id1k/yV2X9TGql1JM7BeMXzvQE7h
         iAU0ZjTsw2oFy9/Gl0fIKv98HYOnmjDcgigWzXJODaJyFOcI3ZDyPPxnTONaLhEeo7ZF
         OWroYn59AHiCfxl8Dba9+5vDy0ko2KQ7Ew40uoAcEZI0d9E2qb2lEtouc58Y4z2Mn8II
         78pQ==
X-Gm-Message-State: AJIora/DLETGWC70yU4heunRPRhTex5rc6qS/xPkS+3907839xEQp13R
        5/BpBdAkQqNoZqN/tGrAlRapYA==
X-Google-Smtp-Source: AGRyM1te9qOkyQHPGL03EdBd5i6YTU8bw2VKzaLGiOy/wv55cMbP/u2aCb2uzcWelSv1ne6sXhBPzw==
X-Received: by 2002:aa7:dad6:0:b0:435:7a44:7480 with SMTP id x22-20020aa7dad6000000b004357a447480mr11446491eds.138.1655754113839;
        Mon, 20 Jun 2022 12:41:53 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id o18-20020a056402439200b0042fbc23bfcesm11448549edc.46.2022.06.20.12.41.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jun 2022 12:41:53 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org,
        agross@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, krzysztof.kozlowski@linaro.org
Cc:     robh@kernel.org
Subject: Re: [PATCH] dt-bindings: soc: qcom,rpmh-rsc: simplify qcom,tcs-config
Date:   Mon, 20 Jun 2022 21:41:46 +0200
Message-Id: <165575403864.144830.16783731313509244481.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220426110757.80603-1-krzysztof.kozlowski@linaro.org>
References: <20220426110757.80603-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 26 Apr 2022 13:07:57 +0200, Krzysztof Kozlowski wrote:
> The schema for "qcom,tcs-config" property can be a little bit simpler,
> without the need of defining each item.  Also move the description of
> each part of "qcom,tcs-config" tupple to the tupple items description.
> 
> 

Applied, thanks!

[1/1] dt-bindings: soc: qcom,rpmh-rsc: simplify qcom,tcs-config
      https://git.kernel.org/krzk/linux-dt/c/d9709fdb20ba6cc252a08743a1a787d1313a09e9

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
