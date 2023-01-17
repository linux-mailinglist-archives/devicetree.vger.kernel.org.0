Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E6EB66D716
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 08:43:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232347AbjAQHnj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 02:43:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235937AbjAQHni (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 02:43:38 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6027823DA9
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 23:43:35 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id l41-20020a05600c1d2900b003daf986faaeso3845505wms.3
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 23:43:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I8cTvDye6DYLnmBfvc3hy6Mq8+3CrFBrld7H/4SJWYU=;
        b=Ql1+4fjVlvM1ESuJBUFl5AEes9WNQTkUPNzLyguBCEu6m4X7QbKaiavzjoSqX+3pGA
         aNIXB0UKyfPDtKLx/FGBqDZ9W9Qc9tHa8+uVtNSUQp7giCr9ca1uut9ZabEZkUNANFxL
         qs7zcbTLTHFKD//XcyTrUWyb28qCvfGcVMt0I2qmSZAgxA1KPfxUjeDl3a7xf6dIBiFU
         LWIBt3ZT3HIh98MqzUK1RQyGkWikj4W/8I2Em4S9+efNRcwWi0nlDgwM5wmsAEl8GOuG
         jNgc55VuUDT0IyjVIgZP7sDg16Ot3qGdBJGiUF8anVbD0KDgLXNO6MntA/HvXksUFCvC
         v/mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I8cTvDye6DYLnmBfvc3hy6Mq8+3CrFBrld7H/4SJWYU=;
        b=WASxdjfv9O9CEhB1DKPo+IIX1NesF62SiYAgu1ni3zK4UDRKEfwg32PhOsj539SxAO
         rnWlNvF4gz53ip4elrH5cMV/XsafxQ0oOLxS4FcVXY7OUnHz/xt1lL0ibxX86JN3cWbf
         G9xisE4ejSjI0A8UE2m0IWQOXlbqNSzxQN+EkDeG+T3YsXRAtcceg2vUQ/BdpJvWdPM7
         KzJeCnyQPMoJgssKHKtDA2qpoOZG6SKiPerNGtw98X6VquLjITp22aqdMYh0NssRGO5d
         pawDA5fIybWemIBjtgdC2ZF2ze6M/giw2LbK3pAp6/f2VFSfvDeZBnXquACtu+N12/VW
         VTOA==
X-Gm-Message-State: AFqh2kp6aRvSRBh+f8sKFKloj60IwZcm38ECApW0zWfWodR3akNkFEi1
        VtNM/RSy/A9qd93U80hWpeQrNA==
X-Google-Smtp-Source: AMrXdXsaJ37jWVEzwsspn6ncj7ito0hiZCQIIGau0tINyJ5td7u+QgqgxIWNUVVfugeScpWj/vJSgQ==
X-Received: by 2002:a05:600c:511c:b0:3db:41c:eb85 with SMTP id o28-20020a05600c511c00b003db041ceb85mr2283769wms.1.1673941413980;
        Mon, 16 Jan 2023 23:43:33 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id h10-20020a1ccc0a000000b003d237d60318sm36272711wmb.2.2023.01.16.23.43.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Jan 2023 23:43:33 -0800 (PST)
Message-ID: <5ab2a0c4-6f22-a385-9a80-5a777db19ce0@linaro.org>
Date:   Tue, 17 Jan 2023 08:43:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v3 1/2] dt-bindings: edac: Add bindings for Xilinx Versal
 EDAC for DDRMC
To:     Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>,
        linux-edac@vger.kernel.org
Cc:     git@amd.com, michal.simek@xilinx.com, devicetree@vger.kernel.org,
        robh+dt@kernel.org, bp@alien8.de, mchehab@kernel.org,
        tony.luck@intel.com
References: <20230117054100.8377-1-shubhrajyoti.datta@amd.com>
 <20230117054100.8377-2-shubhrajyoti.datta@amd.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230117054100.8377-2-shubhrajyoti.datta@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/01/2023 06:40, Shubhrajyoti Datta wrote:
> Add device tree bindings for Xilinx Versal EDAC for DDR
> controller.
> 
> Co-developed-by: Sai Krishna Potthuri <sai.krishna.potthuri@amd.com>
> Signed-off-by: Sai Krishna Potthuri <sai.krishna.potthuri@amd.com>
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
> ---
> 

Feel free to take it with the driver via EDAC tree (or let me know if I
should grab it in memory-controllers):

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

