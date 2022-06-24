Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 60F28559EDD
	for <lists+devicetree@lfdr.de>; Fri, 24 Jun 2022 18:54:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230392AbiFXQwx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Jun 2022 12:52:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231166AbiFXQws (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Jun 2022 12:52:48 -0400
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C91FB60E2F
        for <devicetree@vger.kernel.org>; Fri, 24 Jun 2022 09:52:45 -0700 (PDT)
Received: by mail-pf1-x42e.google.com with SMTP id t21so3076132pfq.1
        for <devicetree@vger.kernel.org>; Fri, 24 Jun 2022 09:52:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=tCmeGo0XTz+Zd0IFJIz94xsEIQ+PGGW5ACqI/rwgrQ4=;
        b=iM0Lhkfm+j1kZVk8z3lvXIOD4aQJS/JWnMcMyjGOn19V/S3sa9iTQ0KhcgUArAbcFh
         1mHbGZSOcpEF3t71QyH0Ub2OfNbTRxhi0NljeRAcDFnBWE8wKoo5xr5bnm2ZcvDaN+0P
         0RjAVFlYnfjodoEMpXlZl+KZNdSsm2DDr0t/1fDySs1bb24LaZY8EMpvnOBhUxPpav+b
         QMGSxNoSYCs4L8s3bibn1biqWlbzACmLbH+gkoTEKfAWO0NGWXMqRSbB5C5E7ha2G/Nl
         rw6dAYuPS8Yv7tXjjzAY/qCCTJyuHWhkUk4ckWS3Pxb7l7Jm/6nd0c+ifuUbO0KTFMw7
         uLqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=tCmeGo0XTz+Zd0IFJIz94xsEIQ+PGGW5ACqI/rwgrQ4=;
        b=xCMOU5S20xkVqRMXRxrTQpjP2I5ouMQB4ctUKazL4QEWmf24+ogrdlNRYgIvrwcF0u
         kerPDk7rhWrRi6kTNqlrK4vcpVoUZAUmGORrxaAKVhlymNayERf5MwsJ03iukw3ty+0h
         z21nAjpcnadVJ4DDrl8PHqLkejrC89wxxa8L3SF7XgEBR0fgwoVfuwG7Yd688zcpJps/
         MiC3mz9f+2R2i4UXteEZ+CmGIC54zoTnQWzrGHREgUtbIKyc6Y5BCV3dkLpHene3/+zY
         7CnsEVHKBcT7W8rCznVaR6PEvTYfX+VXV/qnZQrH+hiMrh+J4IE4+5DCnUpjC11pW+Dh
         W5bw==
X-Gm-Message-State: AJIora9ZGqABGXHeVABmbM9xdzPkXnh8GmwUQ7FY8P+nFHUWZYJBm5uj
        08S5w+xeXQHf7Xi9S9SjJDjBEhwdOTZD8hhxaY8=
X-Google-Smtp-Source: AGRyM1uwQKc2UGyPYRXI6VTAfcHCH3CW+4JcK9fMKzeaZ74yUYWT05EeYCEZduxYq2UF8Am1GrQe7v1hiWKSrH2rqQI=
X-Received: by 2002:a63:3ecb:0:b0:40c:a558:89f3 with SMTP id
 l194-20020a633ecb000000b0040ca55889f3mr12941980pga.277.1656089564783; Fri, 24
 Jun 2022 09:52:44 -0700 (PDT)
MIME-Version: 1.0
Sender: amakpuohafia@gmail.com
Received: by 2002:a17:90a:9b04:0:0:0:0 with HTTP; Fri, 24 Jun 2022 09:52:44
 -0700 (PDT)
From:   "Doris.David" <mrs.doris.david02@gmail.com>
Date:   Fri, 24 Jun 2022 09:52:44 -0700
X-Google-Sender-Auth: 3dleaopgWkwAG0Q7vyD1G1IpReM
Message-ID: <CAPK2mwHQp0NmyTf7yOcJ2UWgCPahLxffzs-THuLdNV4pxsmLUA@mail.gmail.com>
Subject: Re: Greetings My Dear,
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.6 required=5.0 tests=ADVANCE_FEE_5_NEW_MONEY,
        BAYES_50,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        FREEMAIL_FROM,LOTS_OF_MONEY,MONEY_FRAUD_8,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,UNDISC_MONEY autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:42e listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5466]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [mrs.doris.david02[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  0.0 MONEY_FRAUD_8 Lots of money and very many fraud phrases
        *  3.0 ADVANCE_FEE_5_NEW_MONEY Advance Fee fraud and lots of money
        *  2.0 UNDISC_MONEY Undisclosed recipients + money/fraud signs
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Greetings,

I sent this mail praying it will find you in a good condition, since I
myself am in a very critical health condition in which I sleep every
night  without knowing if I may be alive to see the next day. I am
Mrs. doris.david, a widow suffering from a long time illness. I have
some funds I  inherited from my late husband, the sum of
($11,000,000.00) my Doctor told me recently that I have serious
sickness which is a cancer problem. What disturbs me most is my stroke
sickness. Having known my condition, I decided to donate this fund to
a good person that will utilize it the way I am going to instruct
herein. I need a very honest God.

fearing a person who can claim this money and use it for Charity
works, for orphanages, widows and also build schools for less
privileges that will be named after my late husband if possible and to
promote the word of God and the effort that the house of God is
maintained. I do not want a situation where this money will be used in
an ungodly manner. That's why I' making this decision. I'm not afraid
of death so I know where I'm going. I accept this decision because I
do not have any child who will inherit this money after I die. Please
I want your sincere and urgent answer to know if you will be able to
execute this project, and I will give you more information on how the
fund will be transferred to your bank account. I am waiting for your
reply.

May God Bless you,
Mrs..doris.david,
