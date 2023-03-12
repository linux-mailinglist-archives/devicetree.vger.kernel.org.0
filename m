Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA7166B659D
	for <lists+devicetree@lfdr.de>; Sun, 12 Mar 2023 12:48:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229883AbjCLLsk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Mar 2023 07:48:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229609AbjCLLsk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Mar 2023 07:48:40 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA40C29434
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 04:48:37 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id s20so12279633lfb.11
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 04:48:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678621715;
        h=subject:in-reply-to:cc:to:from:date:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=iGGE51YjPiREb0P31xa6FciLF3LLNAYLO3pthF/8pcE=;
        b=pcTVNfP77PMl+5DGwZ/BL3v6MZbCMy4tNWDm6WhHUVAEnAJkNGfriU9WqRRHA1B2Yd
         lL0+UonZx4VBP3O3Nb3nVrdHZ8zkkFWFvoEccMnMA1Xy++Zmm37yMSee2SIY0NC5oXQZ
         IHAPfX/QtvsV/3x72i7V+UVWF0pC2zgPKvj9QUDqrAXrZ9HBJ6oZVudceeXj4O0c8jXB
         HhCBND1PBSPI4BB25QISBUOCPyUyg7DL5TSvqBPd3TkIB0AUREAaZAW9GQQUamq0HE+k
         b+WRwTN9AOZu91b7JfHX5We090Gc0wiiuDffCiU3F0k3kH82rxCW7SP0gAdPsI+vUDje
         ZwOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678621715;
        h=subject:in-reply-to:cc:to:from:date:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iGGE51YjPiREb0P31xa6FciLF3LLNAYLO3pthF/8pcE=;
        b=vhcL4cF/PBj+knwtm1jy9rzUyIhEiL/65CHELP1PC0atUrt3bpquf5OtgeP9+SjI1B
         Vo/jouM/2BWm8JtP65U5Lj0YATI22N+pFq9YjSPPZGLdRqwN29r0l5p1vtw8oqX4Q7VX
         cAR6VP/ZJVcXj5T2Umba7v6oom9HGhiugnKwjKJ4KbIt+EzGDOf9Ki+w7LqGEDnkNiGi
         ek7G+3MQl2G1kF2rfhfEMCnzTx6GaUSip8oPgLsLWaVyzUv3DsvwTAJGHiFkLZMzISsr
         QOVPn94mookEkZycSNPnFn0bDN0ac+kmQdQ1moEGNGec4j0EJLKvIGVqY1T3fZOtNIrx
         R9jw==
X-Gm-Message-State: AO0yUKXaftvI9nHqICxUi/p8D9ceD7gAP6DgJtoiZaA4d2lz8PKD5C1R
        yUtgmL4mvzL9pvsrkzdpcvHXVRvN1pG7jAj4
X-Google-Smtp-Source: AK7set8sqMDY95MSnQP2GXJROLEHvjkv9HKlnLB7IPeXDJ5knJfriRq0EO4tKl0plALYFcYFnffsiA==
X-Received: by 2002:a05:6512:51c:b0:4dc:55ea:cb3f with SMTP id o28-20020a056512051c00b004dc55eacb3fmr2182566lfb.15.1678621715522;
        Sun, 12 Mar 2023 04:48:35 -0700 (PDT)
Received: from letter5.txt (46-138-144-249.dynamic.spd-mgts.ru. [46.138.144.249])
        by smtp.gmail.com with ESMTPSA id d27-20020ac2545b000000b004db3890cb4bsm627519lfn.94.2023.03.12.04.48.34
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 04:48:35 -0700 (PDT)
Message-ID: <640dbc13.c20a0220.844d3.15ad@mx.google.com>
Date:   Sun, 12 Mar 2023 04:48:35 -0700 (PDT)
From:   Sergey Lisov <sleirsgoevy@gmail.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaehoon Chung <jh80.chung@samsung.com>
Cc:     linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
In-Reply-To: <951dec3a-1a3e-6d17-20fb-9e5915606c40@linaro.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: synopsys-dw-mshc-common: add
 "fifo-access-32bit" property
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> ... and should not be. It should come with a specific compatible
> followed by this fallback. The specific compatible then will define
> 32-bit access.

OK, I'll then make a new revision with this baked into a compatible
string.

