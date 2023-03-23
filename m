Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1AFA56C68C7
	for <lists+devicetree@lfdr.de>; Thu, 23 Mar 2023 13:47:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229877AbjCWMrS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Mar 2023 08:47:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231620AbjCWMrO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Mar 2023 08:47:14 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E101128236
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 05:47:13 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id ew6so23028594edb.7
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 05:47:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679575632;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=29KLJ5szuNQ5eMZX1WqdZX59y/UdTkatkQ94dzXCqp8=;
        b=afe3Hc9Ds20Csba9b/cOyIJEZHe9DI1lVbt1uTBoE9cKi3uM1/xX54LA8GzbYmIVcg
         LCuSw8vecu/dLj8A7P+h3xFcv1sRUZmaRSy83dCGKNrh3yWhxh0ir5ccz4Wx7DB+xdTw
         KiH1qOfX92/QHO1JqobBinGrb3AEEsCFMiSPVEWVVHKnjyR2CkXl/BfFP2e/lw+TSR5h
         vg16y4NgtHJ1bLxZCDKkGnp04zVACu1urfmRXBoIPnzoNxs7sxjb4LCFoI02xcoDoS4s
         418Wly/tfLP7yM5mPvKpkpuprZ2E/CosVA+IwG/sVMvNIRrArXAaep1/2zXhFQN9UNXA
         fmMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679575632;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=29KLJ5szuNQ5eMZX1WqdZX59y/UdTkatkQ94dzXCqp8=;
        b=7BrczCxN5Fk3Pun1g1v2t3EohU3pu3crxluGvdPq5egADtguyr7Ycely0J8jSKzIJN
         pahQc0qdphXf+a8TuTEavd88j3k3OWOu3m8ZGpkWCzEMBcAxnQhXp6ShdjK45MS8dTHO
         FApkD5OyGWgq8uCZUMNuhSxnDGG2Q1Bp7Z95kCBxnTKjM1aZhlX70jFD9w7THbR3dPrx
         0rrvbsqZQ4rOlljZu6It02l0LxACv1z/GAeMDtOVMV1GwBlLPEGlrgF4A2R3LQ/jzy26
         LPMeiAMA34tdg5rEcoEM/thZigWbxUJB8989PzH3+2Ttm4RNdD886rZCopGQvih8v3WR
         vpgg==
X-Gm-Message-State: AO0yUKWmGKXALC/kmwbB6cEb5LE+JEL3v8WoJ0lH4OoMZv+rtw3Hj6Tx
        C/TT8XXFpQqtBnQG5U0lvnhScQ==
X-Google-Smtp-Source: AK7set+DMwMAz+xj4sHrYHg384nhJF6bDuTDEnvc5LD2YWuiTiyKOjCdND/Zj5XI9JgW6hxhqpR8Ag==
X-Received: by 2002:a17:906:cc15:b0:931:cac0:60ec with SMTP id ml21-20020a170906cc1500b00931cac060ecmr8707234ejb.48.1679575632463;
        Thu, 23 Mar 2023 05:47:12 -0700 (PDT)
Received: from [192.168.0.107] ([79.115.63.91])
        by smtp.gmail.com with ESMTPSA id ia9-20020a170907a06900b00932b3e2c015sm7737842ejc.51.2023.03.23.05.47.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Mar 2023 05:47:12 -0700 (PDT)
Message-ID: <3e0fa788-173d-a014-20d5-0b4ca4d890b4@linaro.org>
Date:   Thu, 23 Mar 2023 12:47:10 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 2/2] mtd: nand: raw: macronix: allow disabling block
 protection
Content-Language: en-US
To:     =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
        miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        masonccyang@mxic.com.tw, linux-mtd@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230323124510.2484808-1-noltari@gmail.com>
 <20230323124510.2484808-3-noltari@gmail.com>
From:   Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20230323124510.2484808-3-noltari@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 3/23/23 12:45, Álvaro Fernández Rojas wrote:
> Some devices hang when block protection is enabled, so let's add a boolean
> property to allow disabling it.
> 

Why do they hang?
