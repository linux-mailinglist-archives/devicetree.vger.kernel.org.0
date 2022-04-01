Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 105F14EFCC9
	for <lists+devicetree@lfdr.de>; Sat,  2 Apr 2022 00:26:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236906AbiDAW22 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 18:28:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236923AbiDAW2Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 18:28:25 -0400
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A9E45DA70
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 15:26:35 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id a16-20020a17090a6d9000b001c7d6c1bb13so3736991pjk.4
        for <devicetree@vger.kernel.org>; Fri, 01 Apr 2022 15:26:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20210112.gappssmtp.com; s=20210112;
        h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :content-transfer-encoding;
        bh=hL8EOWPJGWOqw+OHvmJ0rPyDC9uu4lp7w06UAGgNiYQ=;
        b=OkaLEE9Ea//1wCZe8xLT6rX0RxVQuguU88/Yg5GMBlQYc3WWhpRhzHBBvs5pHf74bW
         ttLfcpl2y9uTuycVMewYQfXsF/m+nBt67aatHkJF6avXRL3HVENqJAD/GuJcjCmnttoJ
         zsMQ62F9aqSz8SuuWnUNiPHG2jnSBtaJZBYH7Y/xI0iQs38MWjHp7jNvCBY6dJQfO3ez
         05OkUZ3mjypCpq5yi/bU4eCX0CnShL0m1CylQfJxbTa/pteU+eg+DOh8lc6Zs/bRgcbl
         6Tpm7y77yEawxzwEmB6d7GWXw1EWxb2P0ZtdGstQ4V8Xe0dPZVBqlBvzP6aIvVXYI89n
         8qzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:content-transfer-encoding;
        bh=hL8EOWPJGWOqw+OHvmJ0rPyDC9uu4lp7w06UAGgNiYQ=;
        b=xUWaOM5Tf2SUMX3qvUdMzo9RAykArm11ak32KwEZbRmPx7I1aIbBZchQaS0zeddsl+
         1JAQph7QyTzLdG+6+ZMxF2IExIY0R1Am/3LEaAL6XgqTtLCNRI3MY7BjhpZNO+HYgUCk
         5rbgpm+UuwJc701EHyqD4lKCd6Tr6BwmS5LPBkEogJNTcTgt9kSFVDjtkNkz1hncXjV2
         Xz4iUF1fa919UeoIt2YMu8hpncHXgnLGtyXSCQs8eEiy0gWNGdYHH7ei/VoYtw3VG1Z+
         s66ieBHAQhGpoLmOE5qtR3rNjPHzK/SkMzeF/3xG3dFUQiFYW6iKR/9bol1kTBKBNNkS
         uQrw==
X-Gm-Message-State: AOAM531WcYwXmrLmCw+6JPp2pX1N5tLfwkucpi6j3ev0pQK8nNhUUrjG
        gokiUcjaP0KrcvPO4i0CKqs8qef/y26+KnvJ
X-Google-Smtp-Source: ABdhPJx2DXYwk/E1pfjC95cynZA4QLNpg8tA47jB2+kLAG2H20ot637Xai8u+Ufjg7FGFOlOwDzxoA==
X-Received: by 2002:a17:902:d4cc:b0:154:3a3b:4172 with SMTP id o12-20020a170902d4cc00b001543a3b4172mr47834031plg.165.1648851994639;
        Fri, 01 Apr 2022 15:26:34 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id b17-20020a056a000a9100b004e1b7cdb8fdsm4446449pfl.70.2022.04.01.15.26.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Apr 2022 15:26:34 -0700 (PDT)
Date:   Fri, 01 Apr 2022 15:26:34 -0700 (PDT)
X-Google-Original-Date: Fri, 01 Apr 2022 15:26:32 PDT (-0700)
Subject:     Re: [PATCH v3] dt-bindings: Fix phandle-array issues in the idle-states bindings
In-Reply-To: <CAL_JsqL8swP_NuMUiBeRrYhQ2XQct4uPxinOaE4dnn0K8mB1Wg@mail.gmail.com>
CC:     Paul Walmsley <paul.walmsley@sifive.com>, aou@eecs.berkeley.edu,
        anup@brainfault.org, guoren@kernel.org, krzk@kernel.org,
        lorenzo.pieralisi@arm.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
From:   Palmer Dabbelt <palmer@rivosinc.com>
To:     Rob Herring <robh@kernel.org>
Message-ID: <mhng-fa8b59bd-f4b0-46c4-90e6-4dd41151afc2@palmer-mbp2014>
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

On Fri, 01 Apr 2022 14:39:24 PDT (-0700), Rob Herring wrote:
> On Fri, Apr 1, 2022 at 4:36 PM Palmer Dabbelt <palmer@rivosinc.com> wrote:
>>
>> From: Palmer Dabbelt <palmer@rivosinc.com>
>>
>> As per 39bd2b6a3783 ("dt-bindings: Improve phandle-array schemas"), the
>> phandle-array bindings have been disambiguated.  This fixes the new
>> RISC-V idle-states bindings to comply with the schema.
>>
>> Fixes: 1bd524f7e8d8 ("dt-bindings: Add common bindings for ARM and RISC-V idle states")
>> Signed-off-by: Palmer Dabbelt <palmer@rivosinc.com>
>> ---
>> Changes since v2:
>>
>> * Add the missing schema requirement to riscv/cpus.yaml
>>
>> Changes since v1:
>>
>> * Only fix the RISC-V bindings, to avoid a merge conflict.
>>
>> ---
>>  .../devicetree/bindings/cpu/idle-states.yaml     | 16 ++++++++--------
>>  .../devicetree/bindings/riscv/cpus.yaml          |  2 ++
>>  2 files changed, 10 insertions(+), 8 deletions(-)
>
> Reviewed-by: Rob Herring <robh@kernel.org>
>
> Thanks for fixing quickly.

Well, sorry for breaking it.  I've got the DT checks running locally 
now, we've got a handful of errors in RISC-V land.  I'll clean those up 
and then get something blocking my merges, so stuff like this is less 
likely to happen.

Looks like Linus just merged my Part 2, I'll send along the Part 3 just 
containing this as a fix.
