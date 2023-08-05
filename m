Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 58090770E4A
	for <lists+devicetree@lfdr.de>; Sat,  5 Aug 2023 09:11:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229737AbjHEHLT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Aug 2023 03:11:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229511AbjHEHLQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Aug 2023 03:11:16 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24768468C
        for <devicetree@vger.kernel.org>; Sat,  5 Aug 2023 00:11:15 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-99cbfee358eso19930266b.3
        for <devicetree@vger.kernel.org>; Sat, 05 Aug 2023 00:11:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691219473; x=1691824273;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Yz1Cbq5253Upy7To/ILdOnCE5Vu7+PhjZfR51Q+MT6s=;
        b=kVBsnBXAst8PXr7P6TuBNNqhhTgsvdWI0aBKpLqxny1sUKGtgZ72tFDcjzGVfSlT99
         SvN5uc2riHYu1aZSQKLY8zf8nlVRg3r5xdWcH7jZLhlrNNHyJBHrDLrONdKkU+krKZ2U
         vrPqjPVXBLWW18Rv1UwLeeyAgsN/2gc77yxdnTSN19pqYQIddr7Qa4StGlTCP7PCo3WR
         rp858ABlDKH5e6V1blTFlnJ4cS6CrQXfaE1Dzq1EJVXhsBsc0D3onzOSCXJQJyZpNGsQ
         bwtsMBhN5BpkPNFSrmKpm02DNtR1dEQHWhhwIRlY5kf76c4N7cyx+8m9VoJ5zYFu/Fww
         F4mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691219473; x=1691824273;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Yz1Cbq5253Upy7To/ILdOnCE5Vu7+PhjZfR51Q+MT6s=;
        b=T/5pLFkKdNTlySJMg6iNzLxLK4Z8jpdFAuGzsZU2fhju0cZ37PZZ5rQFHr0XewoHai
         Qp9Z/jR/bEivyUm82cl+07hLPZi8W/r3uP+HLmVrl1ENOLECQiJOGVPR7YsEXVOOLJSj
         RjJH+ffaPj0MKvYJRsBDRvR7XrdNKJ4ZCTtC1bY42titEW8jsx4RHpJ+wr18cOAhWy2i
         E+tLpMBCqUVJn5onT+SejAwCEJZZ9q4rkDNBzKU19aM8XirADMfZ5my9fylyVEYsoLCf
         T9w0SzOJMl2ZueL59j2WPGCosbvJj1nF0FZ0NSy/Z/E/cx/0u6Nc4ZAmE0sADRRcRVym
         TgBQ==
X-Gm-Message-State: AOJu0YxsjFuZxoHi8QdZcx6I+DgfEIfrssv7Hto+pYk+dKSJKI/xm+Pp
        9uWbee3MHNElxXRYedSeyG/cyQ==
X-Google-Smtp-Source: AGHT+IHVXwWTCOCrS0wRiAaydBBmSEhSu6wADWazO1sTWMWKdjR9jO4VIRDIqoWcxpmUtm6UGNtZtw==
X-Received: by 2002:a17:907:b16:b0:99c:6fb6:ae7c with SMTP id h22-20020a1709070b1600b0099c6fb6ae7cmr3152947ejl.22.1691219473592;
        Sat, 05 Aug 2023 00:11:13 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.245])
        by smtp.gmail.com with ESMTPSA id y8-20020a1709063a8800b0099316c56db9sm2283516ejd.127.2023.08.05.00.11.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Aug 2023 00:11:13 -0700 (PDT)
Message-ID: <d14663e2-2306-3eda-3760-ef2b4d4150e1@linaro.org>
Date:   Sat, 5 Aug 2023 09:11:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v5 1/2] dt-bindings: arm: sunxi: add Mango Pi MQ-Quad
 binding
To:     Matthew Croughan <matthew.croughan@nix.how>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Maxime Ripard <mripard@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20230805044558.279473-2-matthew.croughan@nix.how>
 <20230805044558.279473-3-matthew.croughan@nix.how>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230805044558.279473-3-matthew.croughan@nix.how>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/08/2023 06:42, Matthew Croughan wrote:
> Document board compatible names for Mango Pi MQ-Quad
> 
> Signed-off-by: Matthew Croughan <matthew.croughan@nix.how>
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

No blank lines between tags.

Best regards,
Krzysztof

