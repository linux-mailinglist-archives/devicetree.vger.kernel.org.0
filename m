Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A8623525E73
	for <lists+devicetree@lfdr.de>; Fri, 13 May 2022 11:19:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1378482AbiEMIoE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 May 2022 04:44:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347289AbiEMIoD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 May 2022 04:44:03 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7557D2AACFB
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 01:44:02 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id f2so3441541wrc.0
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 01:44:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=JTmmZZrjjt1hpC3GYbK+OrumndLLbB/5XKH0Ceu//Qw=;
        b=GrrA4zNNH11zqhiaQhj5njhGLa61T3Rdg5e0EaXPKYVkKuE1my05Kv/NAYJ7uyllFW
         o6sBqbJrkfxM6N/fkJ4uM6MHgWyUbEsps/HjhqiLZylZSFPykGe+wpTXPfpymN2oXB9B
         pWEl+hYVV+BmgMofS3LlG6q6UU8u62bP7EKlYKe3U+FttSQ8qfHFZ5GkWO9TyuyTWvLg
         u1ONSkp6y8ozzfos+MCZuNNhn2pt0Fyd3Yv2txxi597fhd140r9x/QgpywK0rkVWnvO5
         b4fqjDWx19BR8k9AEhkBi6ls5mMCnwPaAOfhPCEzzVoOX6AEkTPW326DBT9+ppPemF1V
         2/fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=JTmmZZrjjt1hpC3GYbK+OrumndLLbB/5XKH0Ceu//Qw=;
        b=G4l6plDw6oDaXwlvAv0p1YA8VVdw3w0JojQ/H60fdgHuGULkrhEz455UQ7C+Wb4B6r
         w7kNIXMqR88FyfDnR77t/Y+K/iUQJPTohT767hUR2Q7VNVG1/i0BAHL6/DIff/UNEHIw
         mbRPij0eLSpHFGrZ+cXIx495bRC7ulkKdT99eZxzqhpE5T5jySvmZcLOEWVUwbF/KMBR
         mu/b4fojKVm43hwl+boi28StXuhQyL783F/EIC6IpGtX/v0zwGyjs4d5iKWmihCZIGtq
         EZ++PxBIIxzT/Gz3v2JzX1dnVgFQ8r0QVfQRfn5A5W/+fJG6UmjDpyRoQ4gqOZUn3TlZ
         dDjQ==
X-Gm-Message-State: AOAM532SjeZRe1x+bYECrz2xIWyvIaX4yvASBMEnApCY2rWrkcwzVsTq
        O3Y/HM/hbFae2MYvpR+RdxDKdQ==
X-Google-Smtp-Source: ABdhPJyHhlPLOukfjjtC8elUtEr+RQ3i1s8e4uPbZzwLxk8P9533jLrEp5Wk6pubVLTuIRP1s215Og==
X-Received: by 2002:a5d:6d88:0:b0:20c:594d:6ac7 with SMTP id l8-20020a5d6d88000000b0020c594d6ac7mr2993077wrs.622.1652431442042;
        Fri, 13 May 2022 01:44:02 -0700 (PDT)
Received: from [192.168.0.169] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id n8-20020a05600c4f8800b0039444973258sm6332569wmq.0.2022.05.13.01.44.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 May 2022 01:44:01 -0700 (PDT)
Message-ID: <5e5520d0-dbb9-8ba8-cf5f-40d322c1f880@linaro.org>
Date:   Fri, 13 May 2022 10:44:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v3 07/11] arm64: dts: marvell: uDPU: remove LED node
 pinctrl-names
Content-Language: en-US
To:     Robert Marko <robert.marko@sartura.hr>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, andrew@lunn.ch,
        gregory.clement@bootlin.com, sebastian.hesselbarth@gmail.com,
        kostap@marvell.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20220512124905.49979-1-robert.marko@sartura.hr>
 <20220512124905.49979-7-robert.marko@sartura.hr>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220512124905.49979-7-robert.marko@sartura.hr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/05/2022 14:49, Robert Marko wrote:
> Using pinctrl-names requires the appropriate pinctrl-0 property, otherwise
> it is not utilized at all.
> 
> Since its not required, just remove it.
> 
> Signed-off-by: Robert Marko <robert.marko@sartura.hr>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
