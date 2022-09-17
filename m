Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EFBB25BBA32
	for <lists+devicetree@lfdr.de>; Sat, 17 Sep 2022 22:07:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229436AbiIQUHY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Sep 2022 16:07:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229494AbiIQUHX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Sep 2022 16:07:23 -0400
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com [IPv6:2a00:1450:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE47621243
        for <devicetree@vger.kernel.org>; Sat, 17 Sep 2022 13:07:20 -0700 (PDT)
Received: by mail-ej1-x644.google.com with SMTP id lh5so14630291ejb.10
        for <devicetree@vger.kernel.org>; Sat, 17 Sep 2022 13:07:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:to:subject:from:content-language:reply-to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=aoqh50oqiL5ZcgiDwqmVe6gC0OWNMY6V/NXa77MNboo=;
        b=jPoWOv+tfqF48ALqMIhoOC/6g5Rj6Fm342A0DuAaC3aw9UI5asygoVPZaEcY/aeanX
         B4THgxnIrArx2bPXG16VPsnKpH/EwEDCVsCUC0qWbcUQ6+fzvQOXkk39rb+HBj+DvB7S
         1q1dxLn+A4Ct6IAcjPpu7rkWFNcUULhhFWkRZHSqRPtWzfykVO5T8HQFYKsA67rQJuld
         p58AUyrHpZzxBWNy4b7Y2+zP1MH+s4jtwi9y9UkBfi9lVJGjdJ5CKva3/8MPJPaJCejO
         AfingdvDdRYgeHistUHWa+rMkuJKFnaa4HLgMxLvJu9MTH70TruDZ8jFsKL1+KzkKl5h
         0npQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:to:subject:from:content-language:reply-to
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=aoqh50oqiL5ZcgiDwqmVe6gC0OWNMY6V/NXa77MNboo=;
        b=Yw+gR8glgXFeReJIaY68sz4r6rPKWmAPPd5xjQ7uzMIF2RxA4Mw8FKuNpR4epju07N
         /6E3D8KlbUTx8eOYbUE39Mg5S7uf90w7Ar/Ef81WLuP9DmATswmDKX9MgTctqHk4XIsU
         y9Xh39XKiaDVr+vv4nlryQgZtjzfnCIPbI37EEUYuoqQt5dXdQ5azw3F993cJG8VSav/
         OdSP6Hx4/z9ce2+f/QCTI/Tyts9HLteJRDaXlL9l8914+HCSxnr6fUtG3O3s0Cj672Ok
         wkiEtuTNUeAptjTQSZx0hX/G3h4zlynRzqhfOdj00tnnbWwO1AIMgQBeHJit2hlt3fRy
         hz8w==
X-Gm-Message-State: ACrzQf1dIDAUbLjQo5jznrjqjWmUxg7vkx/4MxJ8PcI1SFGXDmWtD3AG
        0aH6+ojErTdwcSHruSzwv9M=
X-Google-Smtp-Source: AMsMyM7WTX/nCHfbIuOKuucEM5zu3z4bxc64Tm6oXKP0lo0HKRPW3Z2Uw1bofWerRPECRFV8o8hpyw==
X-Received: by 2002:a17:907:2721:b0:77f:d471:47b3 with SMTP id d1-20020a170907272100b0077fd47147b3mr7622570ejl.591.1663445239291;
        Sat, 17 Sep 2022 13:07:19 -0700 (PDT)
Received: from [192.168.43.107] ([197.191.3.169])
        by smtp.gmail.com with ESMTPSA id h5-20020a0564020e0500b00450f338b9c8sm16034568edh.69.2022.09.17.13.07.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Sep 2022 13:07:18 -0700 (PDT)
Message-ID: <3eee2f3b-54c0-fec3-88ee-6fef90b9053c@gmail.com>
Date:   Sat, 17 Sep 2022 13:06:53 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Reply-To: infogencharlesflyn@gmail.com
Content-Language: en-US
From:   Charles Flynn <jeffriealbert@gmail.com>
Subject: HELLO
To:     undisclosed-recipients:;
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: Yes, score=7.7 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        LOTS_OF_MONEY,MONEY_FRAUD_3,MONEY_FREEMAIL_REPTO,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,UNDISC_FREEM,UNDISC_MONEY autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2a00:1450:4864:20:0:0:0:644 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [jeffriealbert[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        *  3.2 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
        *  1.5 MONEY_FREEMAIL_REPTO Lots of money from someone using free
        *      email?
        *  0.0 UNDISC_MONEY Undisclosed recipients + money/fraud signs
        *  1.4 MONEY_FRAUD_3 Lots of money and several fraud phrases
X-Spam-Level: *******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


-- 
Hello Sir/Madam,

Greetings to you, I am Charles Flynn from the United States, A North Atlantic Treaty Organization(NATO) military here in Yemen. I found a suitcase containing $100 US bills in the secret coffers of a CORONA-VIRUS victim.

The suitcase contains USD11.7 million in total. I have kept the suitcase safe in a security firm here in Yemen. Please, partner with me by receiving it and we share the funds 55% and 45% accordingly.

Please get back to me immediately and let me know if you intend to partner or not for further communication with you.

Please do not disclose this transaction to anyone unless to a trusted person who may be interested. Strictly confidential. Waiting for your response.
Thanks
Best regards
Charles Flynn

