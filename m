Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC6B66C00BF
	for <lists+devicetree@lfdr.de>; Sun, 19 Mar 2023 12:19:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229441AbjCSLTs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Mar 2023 07:19:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230040AbjCSLTq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Mar 2023 07:19:46 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC3BD17141
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 04:19:45 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id cy23so36448402edb.12
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 04:19:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679224784;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=82N3uG5AU/jLFRyXEmy3npabhhexJTbXurLY/x6ZzZE=;
        b=qwrqUlCb0bQNobvMa9fyi9WrQssYdheQyP3l5jbveDmbe9fhGLcUW/who2wteklJYV
         nLEreSX6hgV94jmGeH/rMiw5o0ijeqpC83cEz4o3qsUaSBirkOMf/MhXDeMf/lPE0iQN
         5wh/nGKgl3Qfj6fyD/XEVWg3iJKBd1KZoMXnidLGBpZkhq7Unlzb5BtpJPkITNPabJgw
         c0fHmR3QEWFyfEsjWF/kZ7qEtLnRaw1dF2qHx3yqcfu8W+Eri571HXixUvv92DqMXsaG
         /yVFmfS/5FIOv8KAjDOqAcb20pzM4V3kkAXTFtrm9yMqbtrKIrPBPMtIQFbYY/5ReGwM
         dLNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679224784;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=82N3uG5AU/jLFRyXEmy3npabhhexJTbXurLY/x6ZzZE=;
        b=RIRlobSr697wnGXb8K06c+iW3GZQvlCHsfd8DIdN1EWMFxiBA3aH06fJEKxQ47j7mZ
         OaBFflr0O0nstNK5Xf+6g1CQHl/HKGQb5K/4k8KuIAlvRpYZPj/hVBjE56XNraNulN1+
         Lf2PcttePxHKW3rv8nwpIwdX9W7W/pOUKSqYuDbxvIzOIapxIccQNX64zVgDrocACkSj
         qK3GvtqsD4jSYlXMpwb4Y2h7wr9FKfzsSGZpfdlY0SHt9r3/lLs3ItfI86efgZwt999K
         DqRW6OX3zOWzeBeVkb5JhCSuwP9bSbmAd8HxJKak5drjhKPHgpidO/8u7EqA79gZLTgF
         4zYg==
X-Gm-Message-State: AO0yUKXqkz8zoDrU4BZIsKtkInaFtA8VpoyCCtFtZBdLef0hyUOixxKK
        r3KRTi3axvJAvTG4NaIxHRHklw==
X-Google-Smtp-Source: AK7set9+qIqes3DW7c5PEdpGZYE1w8qfkzf9x1Y0kNzipaNc+V1nT0aHMAH3iS1f9il8hrsGKr65CQ==
X-Received: by 2002:a17:906:cc0b:b0:8b1:88aa:46da with SMTP id ml11-20020a170906cc0b00b008b188aa46damr5022230ejb.48.1679224784331;
        Sun, 19 Mar 2023 04:19:44 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:5b5f:f22b:a0b:559d? ([2a02:810d:15c0:828:5b5f:f22b:a0b:559d])
        by smtp.gmail.com with ESMTPSA id k8-20020a17090627c800b008d1693c212csm3121666ejc.8.2023.03.19.04.19.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Mar 2023 04:19:43 -0700 (PDT)
Message-ID: <99a57b74-434f-8187-d4cb-56e7aed2f2ed@linaro.org>
Date:   Sun, 19 Mar 2023 12:19:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/2] dt-bindings: soc: imx8m-blk-ctrl: Rename blk_ctrl to
 blk-ctrl in examples
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org
Cc:     Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org
References: <20230317095827.49100-1-marex@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230317095827.49100-1-marex@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/03/2023 10:58, Marek Vasut wrote:
> Rename blk_ctrl@ to blk-ctrl (with dash instead of underscore) in examples
> so that they would match the imx8m[mn].dtsi in current Linux kernel.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

