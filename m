Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A7EB6EF66E
	for <lists+devicetree@lfdr.de>; Wed, 26 Apr 2023 16:30:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241060AbjDZOaT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Apr 2023 10:30:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39516 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241106AbjDZOaS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Apr 2023 10:30:18 -0400
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63F9A4EE8
        for <devicetree@vger.kernel.org>; Wed, 26 Apr 2023 07:30:17 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-1a5197f00e9so56853635ad.1
        for <devicetree@vger.kernel.org>; Wed, 26 Apr 2023 07:30:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20221208.gappssmtp.com; s=20221208; t=1682519417; x=1685111417;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6wSK8TbXG/D57t5FR6NzDPZIasD2O4lYbvKihJBPvU8=;
        b=s9Teh+sZjLWfqdiD6ZTZnd6LVSgj88Y9ZrC0GvXtRUCi2L4nGDIW23V1ooSbAOZdqB
         Q78YwKP314TOWyV7pYcgpVNwSqnF3siF7d0dKNqVdZ/AbpBfSyLUUhSAZnTjWxZ9MtqM
         srbn9oKNlVlzYcYfN4KaG2e1GKRCBpmcm6cQ2Bu/kgNTPHXTUIcgXAVAePXZFJgjRQbG
         doo9L7jSBcZHPVHj5ffGCyrlnzehe6LoqjvpohcQ5BZSpitr029CQ/J2Zvs5Q2+DEu/I
         Qa8B9ySo6Azzbpgmgt4Eq2mgJFz3cZJG6jOjmMI5w9C7eroorBW83Xpcti8uRmjje3/N
         9bgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682519417; x=1685111417;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6wSK8TbXG/D57t5FR6NzDPZIasD2O4lYbvKihJBPvU8=;
        b=SGxPSyUiHdeGgFBrOMp+T1As7ayxVxCIjELF+LbKmRHR07H7Bpo5XOXyJjcEWzAUvv
         m9iEpwmGrFW9RphwkjjAhTwZOob7ihQGDWerCQU2eevVMuPRLqbz9jpG2pYdRVuT/VLu
         Xu1bGs7MS7JyZVzBSqJULkdVl9x7SyqSwVS2aKGDR8ve7QEHn5z4yiMtDyMA1CCeaTVt
         enGiEuaThL6Ql8YKcQWTfJ2sS8fQX2WpYZ+HeISvgFsh366odvQ93QOipxmjV2VTX2Tt
         FYOkv/94oxLwGjo9tBwyYupXWD6/z95a/1ckWG96hFl5DDxI7m5/kWbSdbAPd3yf94in
         9yPg==
X-Gm-Message-State: AAQBX9e26ABU1PxUo99gWY2lrxg7z+q+POc8fQ34RlGdrnc4x2qurdta
        T2SaQtBHhxE3PaYxD93UGxF3RQ==
X-Google-Smtp-Source: AKy350ZudvAt+f2Ag8RAzsSUTJHDK0TPS7JYyzwc1yLSgSG+PezWLhWivD1IQ5LUF5DC4t3a2LLa/w==
X-Received: by 2002:a17:902:e80a:b0:1a8:32e:3256 with SMTP id u10-20020a170902e80a00b001a8032e3256mr26229422plg.35.1682519416796;
        Wed, 26 Apr 2023 07:30:16 -0700 (PDT)
Received: from localhost ([135.180.227.0])
        by smtp.gmail.com with ESMTPSA id 5-20020a170902c24500b001a92aa516basm10075468plg.210.2023.04.26.07.30.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Apr 2023 07:30:16 -0700 (PDT)
Date:   Wed, 26 Apr 2023 07:30:16 -0700 (PDT)
X-Google-Original-Date: Wed, 26 Apr 2023 07:30:09 PDT (-0700)
Subject:     Re: [PATCH RESEND] dt-bindings: riscv: add sv57 mmu-type
In-Reply-To: <168244896648.2081233.16478595076932550051.robh@kernel.org>
CC:     Conor Dooley <conor@kernel.org>, devicetree@vger.kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-riscv@lists.infradead.org,
        Conor Dooley <conor.dooley@microchip.com>
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     robh@kernel.org
Message-ID: <mhng-3f7fe3ac-fda9-4adb-bf63-7f6fb1715a60@palmer-ri-x1c9>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 25 Apr 2023 11:56:06 PDT (-0700), robh@kernel.org wrote:
>
> On Mon, 24 Apr 2023 18:05:43 +0100, Conor Dooley wrote:
>> From: Conor Dooley <conor.dooley@microchip.com>
>>
>> Dumping the dtb from new versions of QEMU warns that sv57 is an
>> undocumented mmu-type. The kernel has supported sv57 for about a year,
>> so bring it into the fold.
>>
>> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
>> ---
>> Resending with the missing CCs.
>> Palmer, you can take this for 6.4 if you want, otherwise I'll grab it
>> after the merge window. I doubt there's a rush when it's been missing
>> for a year or so.
>> ---
>>  Documentation/devicetree/bindings/riscv/cpus.yaml | 1 +
>>  1 file changed, 1 insertion(+)
>>
>
> Acked-by: Rob Herring <robh@kernel.org>

Sorry for missing thist the first time around, I just picked it up.  
It's in staging, barring any breakages it'll end up on for-next soon.
