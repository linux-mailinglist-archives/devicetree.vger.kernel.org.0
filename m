Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 19D6350C4B7
	for <lists+devicetree@lfdr.de>; Sat, 23 Apr 2022 01:45:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229752AbiDVXZX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Apr 2022 19:25:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230125AbiDVXYy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Apr 2022 19:24:54 -0400
Received: from mail-oa1-x2a.google.com (mail-oa1-x2a.google.com [IPv6:2001:4860:4864:20::2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C91E1EE8DD
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 16:00:04 -0700 (PDT)
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-e2afb80550so10161155fac.1
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 16:00:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ElI2t4nByDOB6dr+yLR266lxMKTIEX40DDSnpkzAfdk=;
        b=AAL18eX8s5pFrRM+VhPDxLjLMGLkQCN9PL+jVRgw0V7kN4VQZrGyrC9yvnUkDDTA9m
         kUoPiX2AeDEFGlhQgafrnJM6b0hbFWx6As1XdFyzsaPMNT+LFL88wT8KL6EtbHBVMNiY
         XmAZFpWedjwOngPwoyeeBAkh1yzof7YA1rRPwXRc4zrYY9xeqwYv73OLXw569g5RyDJ/
         4UItx60O5ACzGqIv8o1yXv3z55PWWdx2axpX7VycwhT98ePwWGv8hegxjQnUJGFg1Nsc
         Uj1hIqqdCUTMkyisAjlr4sM4FbKyYp5nyDGNaJ/+DYjN1Lwjt3DbfgXDofNsTFiWo2YU
         ZsbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ElI2t4nByDOB6dr+yLR266lxMKTIEX40DDSnpkzAfdk=;
        b=So+gLpaKf/yIPbvHSQy2GuJLNm0aYynYWzj8KRd1MhHX+/BZbhS1U+JTbI8meJM7Bm
         n5MfTp8JjYuYdjiOis7ta7TSMZafhqZ6xNJo6GR7xNuxSRlc/HKcLdPkAf3ki7qO1/+A
         aSg4ng7eARh+9HkELebmApK+EvegJMATVST++HgxLfmhXKDSFOPO9W/q+/lyR8D65Pba
         c7N00oZdy/Zn14hpZqeyz1gCz9mrZj1WxAErUuYrBqGj2XAYLXVY4gE6el1l6SQ3toqx
         UL0DgSH+qEWCL756OfayNej/9fzLttf6tFRWpI2sK+ZtHHWSZInLqWonA4FgtO79Kmsa
         3vvg==
X-Gm-Message-State: AOAM5300iS0mFfFeRkX54vXrvacpydGPiCFOAaTNSlPmKGR5PCL+WJF5
        srjQd1gCvT+hU7NEQSHqB9XrZg==
X-Google-Smtp-Source: ABdhPJyhzjfmiSNV9pg+MVvlFlGDkq8CvnWd0Mwcnumh+SSclYdBOE1HNA5Unl92+fFrCF1gMYMSkg==
X-Received: by 2002:a05:6870:ea89:b0:e6:4acc:9302 with SMTP id s9-20020a056870ea8900b000e64acc9302mr3081663oap.203.1650668403484;
        Fri, 22 Apr 2022 16:00:03 -0700 (PDT)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id v65-20020aca6144000000b0032259d24076sm1250566oib.30.2022.04.22.16.00.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Apr 2022 16:00:02 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        =?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= 
        <nfraprado@collabora.com>
Cc:     Tinghan Shen <tinghan.shen@mediatek.com>,
        devicetree@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        linux-mediatek@lists.infradead.org, kernel@collabora.com,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH v1 1/3] dt-bindings: remoteproc: mediatek: Add interrupts property to mtk,scp
Date:   Fri, 22 Apr 2022 18:00:01 -0500
Message-Id: <165066838719.2742284.7900096409445311556.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220225225854.81038-2-nfraprado@collabora.com>
References: <20220225225854.81038-1-nfraprado@collabora.com> <20220225225854.81038-2-nfraprado@collabora.com>
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

On Fri, 25 Feb 2022 17:58:52 -0500, Nícolas F. R. A. Prado wrote:
> The SCP node can have an associated interrupt. Add a property for it.
> 
> 

Applied, thanks!

[1/3] dt-bindings: remoteproc: mediatek: Add interrupts property to mtk,scp
      commit: b7da6f517214c307efece604ac9dc58dc6123c07

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
