Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B943E676DAA
	for <lists+devicetree@lfdr.de>; Sun, 22 Jan 2023 15:30:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230020AbjAVOaI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 22 Jan 2023 09:30:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229907AbjAVOaI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 22 Jan 2023 09:30:08 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB7F01716A
        for <devicetree@vger.kernel.org>; Sun, 22 Jan 2023 06:30:06 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id h16so8618788wrz.12
        for <devicetree@vger.kernel.org>; Sun, 22 Jan 2023 06:30:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PpDZ5sD5zv7Y/iHdpyDxn61pvRVZoLIH2VkNs6bDVos=;
        b=h8leWq/zMCW4MAdZeD/mLJTV3TO3KXwN/Nhat4PLODvqeXmeLDwiI7gORQoEl8cgj4
         EQ/l/PKgKi/aCM+FXHkpU3MKTEO70mPY1wo1d9wInRF6avgckw6m0OIHehX5a5Aqnudr
         77WDisoz2o11SGIrQtlFeUsnAx38jzQDDG63qMFvtyNZqRpFBGOCGm83HNtT3VZ3RLpr
         OT2p3RU2tvCEr7BCXDRbAIPrg33a4DTtLetexg+JpRLyKa0iB7jyLlMhr/MLqE6BTHTB
         AiTNK5oB1CpIS6iU8K3FsiRMls9eczSC7ih0CTQbOrkiF0DdgSzOM8nA7JzU5AMm5K/U
         HIbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PpDZ5sD5zv7Y/iHdpyDxn61pvRVZoLIH2VkNs6bDVos=;
        b=1Zq+GQJZl/n/HuIYZUTAc+vNlAhRCGhGMBZ75T7s1SQYQOmuguz0VZd+KpnPkPh1K7
         U0qYV2x5+/k7A/mpP0o2UdqxXj0joLj3BMZ6POetuK2sVzSSv0QsfTx0JU76BfzqVz8a
         HfNDroDrdJ3meGTNQC1Iy4yL/Jj2KI7hsmiBZbplL8v+r9VRLdHj0++NddUKsEgIuO+w
         T/T3vrU4tPuCd49W0BTNwNdy9OuFJ2ZpOV+IviK0WeXNckDt8Eix3adUtRFIlvzgPKGm
         YFZytebAhQRPUOTxXs7OhTOcavndNYXHmXXxCmEdZzAwj/XSS4Pu/uWFa2fj/KO1Lwmw
         FWoA==
X-Gm-Message-State: AFqh2krkEFRv0ATfgmgXmV1LTuo0lJRDu9KQv5ZyHqq45gqXQay0bhCX
        cyHJDeNq3cEnkOoQtWfS71324Q==
X-Google-Smtp-Source: AMrXdXtQRKKv9PeFSBCBuLQmkmKWOPSml2EWvIudir73H5SyynbDp6Qmdt9W/FGruq86o5qm6WMgGQ==
X-Received: by 2002:adf:ce06:0:b0:2bf:95cc:744c with SMTP id p6-20020adfce06000000b002bf95cc744cmr6173296wrn.0.1674397805293;
        Sun, 22 Jan 2023 06:30:05 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id a9-20020a5d5089000000b00287da7ee033sm2086281wrt.46.2023.01.22.06.30.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Jan 2023 06:30:04 -0800 (PST)
Message-ID: <a20028e6-3318-26ca-117a-26c87c292139@linaro.org>
Date:   Sun, 22 Jan 2023 15:30:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v9 1/5] dt-bindings: PCI: ti,j721e-pci-*: add checks for
 num-lanes
Content-Language: en-US
To:     Achal Verma <a-verma1@ti.com>, mranostay@ti.com, rogerq@kernel.org,
        lpieralisi@kernel.org, robh@kernel.org, kw@linux.com,
        bhelgaas@google.com, vigneshr@ti.com, tjoseph@cadence.com,
        sergio.paracuellos@gmail.com, pthombar@cadence.com,
        linux-pci@vger.kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-omap@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230122122121.3552375-1-a-verma1@ti.com>
 <20230122122121.3552375-2-a-verma1@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230122122121.3552375-2-a-verma1@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/01/2023 13:21, Achal Verma wrote:
> From: Matt Ranostay <mranostay@ti.com>
> 
> Add num-lanes schema checks based on compatible string on available lanes
> for that platform.
> 
> Signed-off-by: Matt Ranostay <mranostay@ti.com>
> Signed-off-by: Achal Verma <a-verma1@ti.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

