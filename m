Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 730CD54B2A4
	for <lists+devicetree@lfdr.de>; Tue, 14 Jun 2022 15:58:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233764AbiFNN6x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Jun 2022 09:58:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229654AbiFNN6V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Jun 2022 09:58:21 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 106AA32057
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 06:58:17 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id l2-20020a05600c4f0200b0039c55c50482so6301573wmq.0
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 06:58:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=DCTAW+jxn8EwW1x6OBizHmeUgodcWGmb8Wij2is3rxU=;
        b=oXxCGb5fLaBb6wycfCYYsp8SIpPadW/szVIiKcLasIVeEVOxwtqQA1kKyq3QRGZWz+
         Xm24H1bdQXEhU7+IbrfsGo6GvjZpHTZnGo/MNEvdHms9iCIo38ftM9M89pzAE4se4hMN
         lHoqrSYsKtA1oiN4iyY5CI49UVVq9yMqkb7I9xm9P1SY9CNZjWdNI/Gf8lf5nq+X+4gQ
         bpv3+mDYnWoQmIVozkjOMuhhFdoKaTPsjPY4BYzcfvIMXP3bGk1l614/gSaRRwUPNg+Q
         lc6Jj7xVXopZSVp+gwE3Dw0mwVzCQwmUIJIMpYZS/7OP2/+VW+D/AVWfstSjqGcoxTDl
         PAaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=DCTAW+jxn8EwW1x6OBizHmeUgodcWGmb8Wij2is3rxU=;
        b=OtOns+4u8vbuZwopekYxttd6iScdxJeXvnSaezuv+3vswJZdB1hFQiq9MMLNGxNpE8
         +67Cw2PuUr1XL/ONZ30DKCqTO78Jsu9E9R1rxu8rwSKBTepNb1OXVS4GezxrI2RaPPE8
         z0ibVYeA51JLvcGYPqsOO2xCrMo6s1Y0+vvOyoyp6+F0VmYalJ0/6yWz0xqHWN/Ibfzu
         PfYTUSzNA5BO1NJssksYAnA1ZzIln7GJgPIE2gKaw2tn9y519LLByo9tAbJAnwNtEmMS
         0wrmMmdu9lJTQSEvE48xnUQ3KB7dhYtJDm2Vd2sG8QoeRMKmb84FHuGw1f4X0zrq74bP
         rCGw==
X-Gm-Message-State: AOAM532eF+94y4iTa8ARCwmUv6qaSXK7sM60YMIYA83LKpcvlVm9Uyhf
        LkDPyuAhYBOGb66TWol8/ukXQddchzfm3JpRPnQ=
X-Google-Smtp-Source: ABdhPJxl7ucuLJQhKe/EtAW39u2ISb75+nRWVw4k37kUXOInchW1+a576qscdgH0G1GWFDIWN1dapBNf1oUJAOPeKkc=
X-Received: by 2002:a05:600c:35cd:b0:397:7493:5efb with SMTP id
 r13-20020a05600c35cd00b0039774935efbmr4315229wmq.95.1655215095674; Tue, 14
 Jun 2022 06:58:15 -0700 (PDT)
MIME-Version: 1.0
Sender: gogohezou@gmail.com
Received: by 2002:adf:dc82:0:0:0:0:0 with HTTP; Tue, 14 Jun 2022 06:58:15
 -0700 (PDT)
From:   Kayla Manthey <sgt.kaylamantthey@gmail.com>
Date:   Tue, 14 Jun 2022 13:58:15 +0000
X-Google-Sender-Auth: Zl1JbC_0cVUwK6EjK2ByXH-iMPw
Message-ID: <CAEG5Zth7ADqUWwa0RiCkp6_rTRF7rwy92AYZOiFLz1pA0SiLxw@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_20,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
Hi  dear, please  i  want  to  know  if  you  received  my  previous message.
