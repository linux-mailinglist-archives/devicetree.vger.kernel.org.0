Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9FB2A7302C5
	for <lists+devicetree@lfdr.de>; Wed, 14 Jun 2023 17:06:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245689AbjFNPGD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Jun 2023 11:06:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236773AbjFNPGC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Jun 2023 11:06:02 -0400
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B89A19B
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 08:06:01 -0700 (PDT)
Received: by mail-pf1-x42c.google.com with SMTP id d2e1a72fcca58-666669bb882so556995b3a.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 08:06:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20221208.gappssmtp.com; s=20221208; t=1686755160; x=1689347160;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T+ba+k+Uik7gkIXtpKVTlI2mwc1CHEshQrw4/m8gjUQ=;
        b=JirB+nvqJpGztfu59P4yoXYKW3FcejMQW/rC1p2oKGVSvC3r/o6LDjwNmjLA/KShGy
         h2+SDcFS6ZnHmYxH1qggfkSc0p9CpxcOWKySYU1uPZT8JOWwmCYK44MOD17vXtgSVKsN
         BFgFA4Ki6XBiTwqt+q2WNlGQM2FBuMYJr65sX1grNl/PSs81pjG2FyaFDi6gSUA5gi0n
         57qHDRgyoHWIwW04xFObw4a61CaRSZfWZPPy5ikwZpEbbrxAFqK8Afk2bpNCKWRA/L+C
         LHJgrWVuB+mELZLywTY/wm2CnBm5O2HXARr9b2a6xeqzkNSBsca0lESA4Uhf3iONuT6g
         M2vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686755160; x=1689347160;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T+ba+k+Uik7gkIXtpKVTlI2mwc1CHEshQrw4/m8gjUQ=;
        b=G2nE/kldtALXDdgLzYm0fhWuwkJQ/PbKQUEt3Znf0X+kWH6chGdtsevoSGjq/j0YN5
         ryPfCiZtTFgXM9uTbtWK/KnLRMqns7LWTRRvlGe2TwgSSzygtdxFE/6mR9YK9D85eC3U
         jEgLn+yblEW+jnX8cPZCGu/6nrg7M3lFiptDcFuJyX5s04tyRrBprlwgkqzBgfHOoWLU
         V7NVKYXdsuJ6AMP8joPs2ujFNXYK2/0YvaR9cjgJvjuqeqTdUPl8fJyyY9o2wz0aHyxJ
         fsQMxOPARf3mkj8vFeDvcyhLnxsjdyQqS8wbdVN0e138Do08bV7T9upgAdblFx+Fe+4I
         Axcg==
X-Gm-Message-State: AC+VfDydb5+h84mLinRKpXayPKFSWFzg8+q+yAM15y4jbPv69yS/Nu8H
        AoE+wA3TSoUUMufdM9KZGX5u4w==
X-Google-Smtp-Source: ACHHUZ5uBaS+Vs92J0AT6i0i6DWL2Oh99vhbTu9sYIkmkzB0zT68q445XTXpwUF6X18AWl/lHjE+GQ==
X-Received: by 2002:a05:6a20:729d:b0:100:3964:6cb with SMTP id o29-20020a056a20729d00b00100396406cbmr2377315pzk.40.1686755160386;
        Wed, 14 Jun 2023 08:06:00 -0700 (PDT)
Received: from localhost ([135.180.227.0])
        by smtp.gmail.com with ESMTPSA id x17-20020aa793b1000000b00640dbf177b8sm10547721pff.37.2023.06.14.08.05.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jun 2023 08:06:00 -0700 (PDT)
Date:   Wed, 14 Jun 2023 08:06:00 -0700 (PDT)
X-Google-Original-Date: Wed, 14 Jun 2023 08:05:58 PDT (-0700)
Subject:     Re: [PATCH] dt-bindings: riscv: cpus: drop unneeded quotes
In-Reply-To: <20230614-credibly-pluck-0495779ada5d@spud>
CC:     Conor Dooley <conor.dooley@microchip.com>,
        krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        Paul Walmsley <paul.walmsley@sifive.com>,
        aou@eecs.berkeley.edu, linux-riscv@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     Conor Dooley <conor@kernel.org>
Message-ID: <mhng-32141387-ea5c-4aea-b0b2-ac22c18b4cab@palmer-ri-x1c9>
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

On Wed, 14 Jun 2023 08:03:18 PDT (-0700), Conor Dooley wrote:
> On Wed, Jun 14, 2023 at 07:46:12AM -0700, Palmer Dabbelt wrote:
>> On Fri, 09 Jun 2023 07:21:17 PDT (-0700), Conor Dooley wrote:
>> > On Fri, Jun 09, 2023 at 04:07:06PM +0200, Krzysztof Kozlowski wrote:
>> > > Cleanup bindings dropping unneeded quotes. Once all these are fixed,
>> > > checking for this can be enabled in yamllint.
>> > > 
>> > > Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> > 
>> > Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
>> 
>> Acked-by: Palmer Dabbelt <palmer@rivosinc.com>
>> 
>> Did you want me to pick this up in the RISC-V tree, or is it aimed somewhere
>> else?
>
> Usually subsystem, or in this case arch, maintainers should take the
> bindings patches. So that'd be you ;)

Cool, it's queued up.  I'm just put a bunch of stuff in the queue and I 
think something's failing so it might take a bit to make for-next.
