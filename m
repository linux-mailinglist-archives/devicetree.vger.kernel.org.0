Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB5FC715CE9
	for <lists+devicetree@lfdr.de>; Tue, 30 May 2023 13:20:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231451AbjE3LUX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 07:20:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59052 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231436AbjE3LUW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 07:20:22 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23405E5
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 04:20:21 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-974265a1a40so81960766b.0
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 04:20:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685445619; x=1688037619;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yd20fg17/wzyWFeVpB0r/Y/yZQClC31CURysYMhhkuU=;
        b=baDQMQRBHrpQXjmgPj76DVAPn0aostT2Uq1RrXkdot38883uSNcgxjtRVCB/NDC91N
         4f9hMlK9Nw3VUYDqcT2EHcEa8AaKq8AEU5+gzW4tGPGM1wIDhmq1zML4qigrSjZdpGJa
         AOuJ8FL+Ze2f3oZLO+ZSS4fSDG496gQ0KdOCIQ+/7/cPUEoWaT+Mzxi/mirof3R89O6h
         319mLvygA+sRrfxmFGq+o+7XbJRuBcIH5RQEjWUg0ySBJaCxTbU8QNjV5wZ+RdrjP/EG
         FfFaVCp4aGFIifEJGcIbEAnRNFc+uV0yMqr8mlWZTBvbjgVExDF1ytB0DaVTHlrP/Gmx
         1E5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685445619; x=1688037619;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yd20fg17/wzyWFeVpB0r/Y/yZQClC31CURysYMhhkuU=;
        b=HDooYyeB52BeVp8mCX8Ylt5LVpEF3r9CGKI/fS6srOzUIRszzRRFClVajOD4L/O57S
         c6R+X8fN+b+82a+9CalYZfUZiCUnTY8IPoeI9Qxwt+3h4WBj8H0P6PknWVEktXFAVpdD
         U9/ug6WaHDaHPsafMygYKG+95Jb7UsOImq9nhCKCCGfGhuyrT9FJUpwFvGeBM1kpVVgR
         AL159i9v1wlQhVh11Lvz7NCoqY4tjTyE7pped74IwTslqKfHSEMEtReXvlW7AGTJurky
         /2m+1cFypnQihvSqrq4OFZp1xnnz9DZmLZL2w5JRf8CctDxSjN7etJqZnYk+K5XhPaDr
         fnUQ==
X-Gm-Message-State: AC+VfDzSdnJugLdSJGPsnXlFwwKalLqik4GXST6kvuZebRQeTKz4C7l+
        FYg3ADF2bbpek1QvsSyHhrz5Tg==
X-Google-Smtp-Source: ACHHUZ7i0rQP+G4NUnQ1Pzw44Mp8S1ZzLD4qDMbuKxpk6jJO6NiExe52FOsO4buRImy0W0OI/3FFvw==
X-Received: by 2002:a17:907:1ca2:b0:953:834d:899b with SMTP id nb34-20020a1709071ca200b00953834d899bmr10294984ejc.29.1685445619558;
        Tue, 30 May 2023 04:20:19 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id h3-20020a1709063c0300b00965ff04f9f6sm7314636ejg.161.2023.05.30.04.20.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 May 2023 04:20:19 -0700 (PDT)
Message-ID: <1c57f588-4101-3892-5797-4ffc6c654dd9@linaro.org>
Date:   Tue, 30 May 2023 13:20:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v3] arm64: zynqmp: Switch to amd.com emails
Content-Language: en-US
To:     Michal Simek <michal.simek@amd.com>, linux-kernel@vger.kernel.org,
        monstr@monstr.eu, michal.simek@xilinx.com, git@xilinx.com
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Amit Kumar Mahapatra <amit.kumar-mahapatra@xilinx.com>,
        Andrew Davis <afd@ti.com>, Conor Dooley <conor+dt@kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Harini Katakam <harini.katakam@amd.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Michael Tretter <m.tretter@pengutronix.de>,
        Parth Gajjar <parth.gajjar@amd.com>,
        Piyush Mehta <piyush.mehta@xilinx.com>,
        Rob Herring <robh+dt@kernel.org>,
        Robert Hancock <robert.hancock@calian.com>,
        Sai Krishna Potthuri <lakshmi.sai.krishna.potthuri@xilinx.com>,
        Srinivas Neeli <srinivas.neeli@xilinx.com>,
        Tanmay Shah <tanmay.shah@amd.com>,
        Vishal Sagar <vishal.sagar@amd.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <108cbbbab29e13d386d38a779fd582f10844a030.1685443337.git.michal.simek@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <108cbbbab29e13d386d38a779fd582f10844a030.1685443337.git.michal.simek@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/05/2023 12:42, Michal Simek wrote:
> Update my and DPs email address to match current setup.
> 
> Signed-off-by: Michal Simek <michal.simek@amd.com>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

