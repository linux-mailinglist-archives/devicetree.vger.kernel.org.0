Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED19B69990A
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 16:38:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229510AbjBPPiq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Feb 2023 10:38:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229502AbjBPPio (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Feb 2023 10:38:44 -0500
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B6B538037
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 07:38:43 -0800 (PST)
Received: by mail-ed1-x534.google.com with SMTP id c1so4371449edt.4
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 07:38:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:sender:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        b=odxbdPv1Xv8c26XesZmEfNTNGdQ6Vcnha+lxeCJs/OmEXqUW/mPFWkYOe1Ex+tCWGY
         tyyeYbpuDDToVQtJ4exuG8p/LHeu2vo45lhZ5wjCHF2vk1OO6Kaop6vWd/s99tLo6265
         2YgRkUIE2976octYbE2rf/Q8jMnfFn+AIpjxz2lvwlkdCfQF09Xuftic8KjO9i2FIrhr
         WcAvnj2GMIa0IewTiMK8ySgVSaiDegdIOUxtVed2hz467kKq7kLwHlbSAWjWMUcL+zl3
         d4rzYhzU2IGiRmFoQiVAUtmYhPoItvX0Jj/4MCbD3yEJHIvA88pm4K4Yu93oGr0leHzk
         ZF8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:sender:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        b=398UB7qGroBK6oU9ht+os8XfuMikPM7avrTTBU1eAKXmj++Atcfa8l19jFhPIRJwk+
         8PpS3qoX9zuHxuJtjzGVs+hRTNWzmjq2KQpd5oERNlzlPqO8S0Hb60E4oOtuXpMCWlMU
         zmgnUvS/tF2/c3ZjRNM1dY3/DnkUuEuO89c/pyZdzCssGDLGvfKlPvuDJb95/dCfkkKJ
         lBetHgOyq5TNvxUnfySr7p3v8JfFFdgAMz9hXWukChbvYNFPUN9UT8Y+gb0Kxmp45j6K
         VLoAAALCE3nKK7XOZZC8EOVvHJs7ZP6LYfBEhIUkUBkQBHg/uGE5Pg1kSwMw1nX/0/mK
         T8oQ==
X-Gm-Message-State: AO0yUKUjQYolBY4othMvASl6loWwOVAvesXqBAaOIoKJHCFFlfHiB1cX
        ynGXt1qG4kV+D0Hrtfj9Gf+Qm+ORrUFHS4LY2Ak=
X-Google-Smtp-Source: AK7set+y94rCPb+LB0XUADIn4of+I8WCAkmJWs3QJT2wu/81Ie+wqSoNCE4zmwk0GIeD8orUx6yiabtL8zUtykvRBFk=
X-Received: by 2002:a50:cc9d:0:b0:4ab:44de:76ef with SMTP id
 q29-20020a50cc9d000000b004ab44de76efmr3312090edi.0.1676561921997; Thu, 16 Feb
 2023 07:38:41 -0800 (PST)
MIME-Version: 1.0
Sender: sandeepmathurmathur9@gmail.com
Received: by 2002:a05:7208:5b10:b0:61:f37c:f21f with HTTP; Thu, 16 Feb 2023
 07:38:41 -0800 (PST)
From:   Anson Brudenell <barristeransonbrudenell@gmail.com>
Date:   Thu, 16 Feb 2023 03:38:41 -1200
X-Google-Sender-Auth: DppJZn8kwBZE3k4gBgtRiNCvqdw
Message-ID: <CALPpdSQ56zvfKShgO23R09GJVAxr8E++LGhDR_4sTqRi=p3p6w@mail.gmail.com>
Subject: Hallo, ich brauche Ihre Hilfe in dieser Angelegenheit
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=3.2 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,EMPTY_MESSAGE,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ***
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


