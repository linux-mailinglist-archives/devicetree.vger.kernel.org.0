Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B4B224EA80C
	for <lists+devicetree@lfdr.de>; Tue, 29 Mar 2022 08:43:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233132AbiC2GpL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Mar 2022 02:45:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233128AbiC2GpL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Mar 2022 02:45:11 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE2661B371C
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 23:43:28 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id r7so22193024wrc.0
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 23:43:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=pjFu1KHHHZg3EFH3pYqauqsY8wqWnzkiAMxgYO7hP2M=;
        b=egPJZmiRt2FsaY/Q03MAAADsSUhvuq+fjdJvorxuPi5JM8DJMC5MplYDQnH5a75iTm
         jZX1yUoZbAB14OSBSbuHnTYAABMhwPqtKvLzOHm8XF46LYZNqgpAhWjFYuhMuD6EcZbH
         yoyE+/8HRN6/r6bFHsCy6Qq66w/fFFWjI0RKIPjeA/9a0T502aQipzuVfhgw5YJ8GW4A
         CaMz66lLk54EJqcrPv6OIOF5wlU6xg7AThj7E5HNzCHLBLS2E46HZxBnzeT+xIaywbYE
         jQSTklqLVvpftFMf4EdOoBXC194Ab9/VX+GcfUUOPCOGsOp2XDlCE62VDVPhcgj4MtTp
         wfWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=pjFu1KHHHZg3EFH3pYqauqsY8wqWnzkiAMxgYO7hP2M=;
        b=WygQVBpRcw0AEQYdeVdKKd5DASQCgmcATcENyZPg/6bfPBfN6rtJxV1z4VhqizDl1d
         SSsu7Zw4zo3bWdB5n2lMmbSiYMfkJrhEEO877n3y1zVDeP6E+9RFjQKRdoJRmJDz/1nj
         P7163yB9Yr90+oweuuCncFj2S8dq2Iy770Jbzfs+saSPxLw2+il5gdvU2jXF4nFeqQhk
         +dUPGsfrPpAR6z9N8H6FiQ/ExhykPmi5ESptmEKeMlGBEKebyDvXg38oGbpkr6xYz2Qf
         /bUeW1MQUKt47vRDkxT803FTzUiIEVcPH4k5UrRzIgRED2k9WgHRDChkF+hFPFbbKXEZ
         LO3A==
X-Gm-Message-State: AOAM532Ng/GP+KIlx8Pc6KF8gSkFyaqtwtrOqVhHy6DBfxw4Pon4bKxs
        506OxAEWZgpPErZbw357cutl8g==
X-Google-Smtp-Source: ABdhPJw66hrsLltXJ+iRsNUelzTZUOMfDnpfHI3blTJvAaHTIoIpQrxFQd31Cx1UlZ4DNqq40fqHQQ==
X-Received: by 2002:a05:6000:1cc:b0:203:fdbf:e576 with SMTP id t12-20020a05600001cc00b00203fdbfe576mr29206949wrx.147.1648536207497;
        Mon, 28 Mar 2022 23:43:27 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id u8-20020a5d4348000000b00203dbfa4ff2sm13970713wrr.34.2022.03.28.23.43.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Mar 2022 23:43:27 -0700 (PDT)
Message-ID: <f54ce165-5c6c-6a80-58dc-2cfdfb01b800@linaro.org>
Date:   Tue, 29 Mar 2022 08:43:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2] dt-bindings: spi: qcom-qspi: Add minItems to
 interconnect-names
Content-Language: en-US
To:     Kuldeep Singh <singh.kuldeep87k@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Mukesh Savaliya <msavaliy@codeaurora.org>,
        Akash Asthana <akashast@codeaurora.org>
Cc:     Rob Herring <robh@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220328192006.18523-1-singh.kuldeep87k@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220328192006.18523-1-singh.kuldeep87k@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/03/2022 21:20, Kuldeep Singh wrote:
> Add minItems constraint to interconnect-names as well. The schema
> currently tries to match 2 names and fail for DTs with single entry.
> 
> With the change applied, below interconnect-names values are possible:
> ['qspi-config'], ['qspi-config', 'qspi-memory']
> 
> Fixes: 8f9c291558ea ("dt-bindings: spi: Add interconnect binding for QSPI")
> Signed-off-by: Kuldeep Singh <singh.kuldeep87k@gmail.com>
> ---
> v2:
> - Reword commit description
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
