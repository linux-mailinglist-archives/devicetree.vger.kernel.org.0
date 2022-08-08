Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EFAE658CB21
	for <lists+devicetree@lfdr.de>; Mon,  8 Aug 2022 17:17:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243279AbiHHPRU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Aug 2022 11:17:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243463AbiHHPRS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Aug 2022 11:17:18 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49D29261A
        for <devicetree@vger.kernel.org>; Mon,  8 Aug 2022 08:17:15 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id z16so11209836wrh.12
        for <devicetree@vger.kernel.org>; Mon, 08 Aug 2022 08:17:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc;
        bh=aEEhusA2uO3xOlijgosxmVncGIW0XNq+zhiCAYCpbsg=;
        b=zttKVRlrIAOc38bj0MZFaWmrn7v4G2JZHrXcj7BDj4Env6G4AwrZi/Y85unzwlT/VT
         5g3H3ynUIwRcYdmrwXQN6y+2kse2fNwAAO8FE35IsnysmkTI4+aD+FHFWKtlqE1bBqiF
         CqjAgcPoaAXr54rS3IR5YYGlpfUa8eBfZWRBuSm1YH7UbCmkYKOSLTgzcl3MVUSS3gh5
         XE/F+tRaaPbB0vSlZ+6veOIvQZcYQ8Qp8Gel+9oIWGlijz5UffmXanzUz0AJWHZQieIT
         hMsTu9L73mMtGCeDbItrfep7M8oY8ahRzW+E3oxNuCVZMfhiXPoWUYBTVdYhrPgoJC0B
         pCZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=aEEhusA2uO3xOlijgosxmVncGIW0XNq+zhiCAYCpbsg=;
        b=rJ+74wziEkO+tj7dx5ZMQeblFS153JeeT4EZXv52kcoSNQjzeBHe3PtPuC+KQLBR3D
         tuzdoqfPU6YA+veLaWPV7LwgTaAn18rm0Wn1Xd1Ky638Jf0IMMEnmiPLTYCZkKtY2iOy
         AF49Zj7bC++StORImOhcbpwxHGdXVXTE2NxPVyn/RXBV6Ox7HQzqvpbgfT6xrEh2QnRM
         QJEPpJdHE8B+aG85n86OOKXhijyFkdtg22X7lLQGcfDoGvDwxk+3Og5Hr8ovvYqOWgnu
         tefdRZrMUHurSyjNRq6Cti+KGrdssY8k2YdcoPqJIu1mCQC9B74eHYDgv3s1hWsI7HsI
         FE0g==
X-Gm-Message-State: ACgBeo13rfHlb38tdnGZSVwjyfxFrvt05DOXMpUSQY9inDqpqMunQFpa
        ATSZXOvw59T2BUTsaT44YYa+fA==
X-Google-Smtp-Source: AA6agR4nqJfrXw3Y9cimqQMY1rskwGr4WzCVKXIdzR4n+rXaRE6zJbpwUZCJ3pwH9RFOFaKqVD2YfQ==
X-Received: by 2002:a05:6000:1883:b0:205:c0cb:33c6 with SMTP id a3-20020a056000188300b00205c0cb33c6mr12457600wri.39.1659971833810;
        Mon, 08 Aug 2022 08:17:13 -0700 (PDT)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id b1-20020a05600c4e0100b003a2e89d1fb5sm19346419wmq.42.2022.08.08.08.17.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Aug 2022 08:17:13 -0700 (PDT)
Date:   Mon, 8 Aug 2022 16:17:11 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Francesco Dolcini <francesco.dolcini@toradex.com>
Cc:     Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Lee Jones <lee@kernel.org>
Subject: Re: [PATCH v2 1/5] mfd: stmpe: Remove rotator block from probe
Message-ID: <YvEo9325xhM2fMGC@google.com>
References: <20220712163345.445811-1-francesco.dolcini@toradex.com>
 <20220712163345.445811-2-francesco.dolcini@toradex.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220712163345.445811-2-francesco.dolcini@toradex.com>
X-Spam-Status: No, score=1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FSL_HELO_FAKE,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 12 Jul 2022, Francesco Dolcini wrote:

> Remove rotator block from probe, it is not used in any device tree file,
> there is no related cell defined, it's just dead non-working code with no
> of_compatible for it.
> 
> This is a preliminary change to allow probing by of_compatible and not
> by a fixed name.
> 
> Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
> ---
> v2:
>  - new patch
> ---
>  drivers/mfd/stmpe.c | 2 --
>  1 file changed, 2 deletions(-)

Applied, thanks.

-- 
DEPRECATED: Please use lee@kernel.org
