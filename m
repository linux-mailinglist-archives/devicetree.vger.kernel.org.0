Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0196B6D1AC2
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 10:50:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230358AbjCaIuO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 04:50:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231489AbjCaIuN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 04:50:13 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 498B31BF52
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 01:50:08 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id z42so22255077ljq.13
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 01:50:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680252606;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Hm2hIAzlWIlh/HN1Ebjpq4RGvB1b+HCsUGt69FXJxjo=;
        b=OZzN3gG9tUFUcxAB3ktfT4IXwzPS+VV7TL07b1QYgQ4YiHiWCKfi+cQJMLeoKR7Bzs
         sjhISVj/7gm/tgojJyvLUSlOQrCN6xWk4Qez5mTfkvlO0kNy77xNbUIBQ+3EN8OKBIzD
         CL+QZG3i33RjSa14dyrobfjtJPlUyRRkfK/T/E9f7/JpBxQs94h8s1RGrVTPq/sMxj2T
         i925RhEbmaPPxIR5ciVNZGfvOKyr2RqNMYnfoDaz5gxixNXjJ8kxozn7V4DES7VUfw7Z
         I7alN4mpWXVMm3HA5WLzfMu/KvAVVHbnDUXPYmn4W1e1RkwO67R/ShCjqC1t/lcb4vhP
         wJDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680252606;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Hm2hIAzlWIlh/HN1Ebjpq4RGvB1b+HCsUGt69FXJxjo=;
        b=X/TqMfDuHRp6uj2C9GUdGLCE9s8MCtpJ/iBxVo8xHqi2vkDBKtrph2Ws9aXu3xlaP3
         PlgvfMN9Egqk/xmk28ELAbEtcQ3p/yOjYw3td4kSlKJgrS2zmPzeNk1kBt0lM44geQo7
         WxljjXPhGMNMicY/vT3c6wR8yJB0yHGe2tditdnPHqiNrmdhH37INXp01QxvMic7ifUf
         cWwo3zsNYFQs8qrrUhMYz2A5nj5W/coEpy6GXa+uTdw0f0Feg4hfdZ8bTQeJ5UFLTLiK
         VLGAWHKO7kV4COfG0umFPTS4vsQbXwWoyrEa8nUHbuUrmwe4aYwl3oy+h7zOySDwsLKM
         NnOg==
X-Gm-Message-State: AAQBX9cVfvAMiGKfvXxKUZoDa3E1Ww7/MVu5hVYfJWn13hIWowjN1yZ6
        h/FoCoRNF82ON8QcTvlbEkx8Ug==
X-Google-Smtp-Source: AKy350b5BwrspfmaEhSZ5j4TtCdA7YCIHmTX5EQVjnvSnXoOPLRYU9gWB7YN5bhQTMIGSMGEAsyNlg==
X-Received: by 2002:a2e:b548:0:b0:295:9ba2:8a78 with SMTP id a8-20020a2eb548000000b002959ba28a78mr2608023ljn.17.1680252606400;
        Fri, 31 Mar 2023 01:50:06 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id p23-20020a2ea417000000b002934abfb109sm270261ljn.45.2023.03.31.01.50.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Mar 2023 01:50:06 -0700 (PDT)
Message-ID: <ae7bdc73-3836-fd28-f253-123ab27b7418@linaro.org>
Date:   Fri, 31 Mar 2023 10:50:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 1/2] dt-bindings: mmc: arasan,sdci: Add Xilinx Versal
 Net compatible
Content-Language: en-US
To:     Sai Krishna Potthuri <sai.krishna.potthuri@amd.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Michal Simek <michal.simek@xilinx.com>,
        Adrian Hunter <adrian.hunter@intel.com>
Cc:     linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        git@amd.com, saikrishna12468@gmail.com
References: <20230330065240.3532010-1-sai.krishna.potthuri@amd.com>
 <20230330065240.3532010-2-sai.krishna.potthuri@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230330065240.3532010-2-sai.krishna.potthuri@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/03/2023 08:52, Sai Krishna Potthuri wrote:
> Add Xilinx Versal Net compatible to support eMMC 5.1 PHY.
> 
> Signed-off-by: Sai Krishna Potthuri <sai.krishna.potthuri@amd.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

