Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC53772AAC7
	for <lists+devicetree@lfdr.de>; Sat, 10 Jun 2023 12:04:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231335AbjFJKD7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Jun 2023 06:03:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230200AbjFJKD6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Jun 2023 06:03:58 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 021DE30D6
        for <devicetree@vger.kernel.org>; Sat, 10 Jun 2023 03:03:58 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id 5b1f17b1804b1-3f735bfcbbbso18764075e9.2
        for <devicetree@vger.kernel.org>; Sat, 10 Jun 2023 03:03:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686391436; x=1688983436;
        h=to:subject:message-id:date:from:sender:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SvKsWt9LONNBbmyn76CUaIRFpx6XrGejj9uupqUqu0c=;
        b=bYClprQpRDicTUk4vocRDMqbCH9gj8RbB4N2DvUTKqoOuVc2UZj+pu9MwcwEmJ2LWw
         u3j6QBX2uJCOq3eCmnFEWHVTNuiQaF5gayNs5aHdDU61+hnIJvn+k+YVlC1163hudwwg
         TcW2pYKYFrK0+F/qqrHuSyp5Ohhw8tbRtNbRYocDIXyaytmBVgNrbNeZl2XhBeDibwMB
         gS+8LK2R+i8PCiIJj3P3NBkQl12Pg2szk3R5nugUR6kPjCLQcGXwgaV83ku6EpSeHWNZ
         E0U/u3cuMd0lMgT50MddHuZhdAM6pLJKu1cotZ1myfdjWUEAtpCMosaXXK518JGJa1+M
         UJxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686391436; x=1688983436;
        h=to:subject:message-id:date:from:sender:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SvKsWt9LONNBbmyn76CUaIRFpx6XrGejj9uupqUqu0c=;
        b=R1e+/9MSEfbO/MFOgkp7pIz3g0Z3BsxP9yBzDuYLUSh00Z30gM+9l+JEEFdTs5rzcN
         QdA5viywRih7pg1JFwjDOCnKPN/64TonScnv7B37MJdsilgV5wJ+nMBIVT4S5M/ZI4Zv
         PZDXxQKQoZglvFP1+B+lbVi4bxCZ/JoZpjNxPc9VCv3ColmFooRveiDYIsdJnRxPdcmu
         y/XN9zbMRim/jpL1+Ky4L33kDlrogPz414hPQWYmlihExNI6lBtd1c8o/+jjKdGhKEWL
         fqB2qE9pmJFbkcTAaFgKdN+7zr8jcWAFB2xZJoRs2/3Zk8DH/K8QJoMHt2Qv2tV4vIIU
         6UYQ==
X-Gm-Message-State: AC+VfDy9LVpbrZ0lFYSHVWwHUzfw7wd/issoPV5a2+ou14R1l2jBuL3X
        PI7n0zoO7WlJ3hXQGobLUt/0BdHlfcdhXYTvH4g=
X-Google-Smtp-Source: ACHHUZ4esFF9JNppY/Ko1tyQmxlGu6rMgTtnkFA24M0/Z4bEgaj9mfoWyLz6MGNLE2ZCEA6JGO9BrL7UsY17uthrp6E=
X-Received: by 2002:a05:600c:cd:b0:3f7:e7a0:967c with SMTP id
 u13-20020a05600c00cd00b003f7e7a0967cmr2352757wmm.19.1686391435922; Sat, 10
 Jun 2023 03:03:55 -0700 (PDT)
MIME-Version: 1.0
Sender: zaniidia2@gmail.com
Received: by 2002:a05:6020:7011:b0:279:8c3b:9389 with HTTP; Sat, 10 Jun 2023
 03:03:55 -0700 (PDT)
From:   Vasylina Matviyko <vasylinamatviyko@gmail.com>
Date:   Sat, 10 Jun 2023 12:03:55 +0200
X-Google-Sender-Auth: -rcUq25FGwEypQjK6enJYRH-4Mk
Message-ID: <CAJR8GoXK_NYPqkqEeR8PjhG_kPgE5=5uNe_q5gjkhSDs0yPdZg@mail.gmail.com>
Subject: Is this email still active
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_05,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
I haven't gotten a reply from u after my last email
