Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3578157739A
	for <lists+devicetree@lfdr.de>; Sun, 17 Jul 2022 05:08:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233610AbiGQDIk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 16 Jul 2022 23:08:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233463AbiGQDIe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 16 Jul 2022 23:08:34 -0400
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com [IPv6:2607:f8b0:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8EF814D05
        for <devicetree@vger.kernel.org>; Sat, 16 Jul 2022 20:08:33 -0700 (PDT)
Received: by mail-ot1-x335.google.com with SMTP id br15-20020a056830390f00b0061c9d73b8bdso535542otb.6
        for <devicetree@vger.kernel.org>; Sat, 16 Jul 2022 20:08:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vRY8TYTDlO1ScT33gTMdxfz7anb7qpeeuFZvIlj6hGU=;
        b=VfB/2er3v4hJLmBKGHNWZkc2KGiaZ+9qmquuvuRYboV+qCzkLfwFbxHCzDdoNg4obx
         7SA0Oec43EN+nv9IyKsDo7FzFvQkzYdUC+OfpCiu2dzrHs4VVqH/+oMDCstc37LaOJwI
         d5TGLKlagLHJT3f7wMf8f7kgRJYGZ7gjsOoiY/KUhvv97M8CfeqACONPOpXro9riekDD
         Qv17tap0qRvjiTnc1cWrOXjjt5he8pSBU9/3rSkILZcF7cWzw3eNt9SG96rJkyuKc81u
         X6nP4MIRoEITWuPAswjfKXBBy1iPpEuB7P29uDc7jKH0vsM1Mg1Lnjc1hNFTXv1yDx0b
         E/Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vRY8TYTDlO1ScT33gTMdxfz7anb7qpeeuFZvIlj6hGU=;
        b=6MUr7tIqhERTRpali2+W9WJ4EDLITvH5xt4YzSPXvRkRMdpO+BYMDnYsIyIx7d0Z0u
         hWZ3dA7SHWk+pQWjVO3caLnfBmT8tsP3B+UalJ/sTwauQuT4gYEDbv5x8Ep/oDUTSC7p
         g6APOQDosz+YBGt2hQ3tTbd5WjI5x6+YXH6x3gjeR5WnJ3WVEHU9vtltEBhzq3PB1ve3
         smqZwsM6XoVqMEvoIW/C10ovO+G8xoNV4MJrcONOfToJLW1beXq/k56juo0d4Q8AldIe
         HxGw5kTfe/yiCkupuBWnM+3rsGkHOcnaxtKnyBxjjVykuiv6nmDMdE3VW3Ju3nuhwf0h
         bi+w==
X-Gm-Message-State: AJIora+C4PLbvre1drO+4aCmuwOtuhC7vA9Bu+shSadMOe3j065NpAuj
        SNPNtu7OtYkNFdVqNTehe4aGQw==
X-Google-Smtp-Source: AGRyM1uEzLW+Jw+QFP2i3PlIlRQD5YNnT6mLe+aL6iDEqYP35qWmkR5ioofrZcsJPGG4Lx6T2l6wfQ==
X-Received: by 2002:a9d:1784:0:b0:60b:f7a8:7cc9 with SMTP id j4-20020a9d1784000000b0060bf7a87cc9mr8675696otj.96.1658027313267;
        Sat, 16 Jul 2022 20:08:33 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id z203-20020a4a49d4000000b0043577be222bsm3203928ooa.22.2022.07.16.20.08.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Jul 2022 20:08:32 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     linux-arm-msm@vger.kernel.org, Luca Weiss <luca@z3ntu.xyz>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        ~postmarketos/upstreaming@lists.sr.ht,
        Andy Gross <agross@kernel.org>, linux-kernel@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>, phone-devel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH] ARM: dts: qcom: msm8974-FP2: Add notification LED
Date:   Sat, 16 Jul 2022 22:08:23 -0500
Message-Id: <165802729676.1737676.8867174109344520597.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220505163029.6541-1-luca@z3ntu.xyz>
References: <20220505163029.6541-1-luca@z3ntu.xyz>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 5 May 2022 18:30:29 +0200, Luca Weiss wrote:
> FP2 has a RGB LED connected to the TRILED and hence channels 7, 6 and
> 5 of the LPG. Add a node describing this.
> 
> 

Applied, thanks!

[1/1] ARM: dts: qcom: msm8974-FP2: Add notification LED
      commit: a037fcabdbdd8615e17add98c2638df529ff2e3c

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
