Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BCEAC6A4A89
	for <lists+devicetree@lfdr.de>; Mon, 27 Feb 2023 20:04:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229547AbjB0TEV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Feb 2023 14:04:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229379AbjB0TEV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Feb 2023 14:04:21 -0500
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30FA6D53F
        for <devicetree@vger.kernel.org>; Mon, 27 Feb 2023 11:04:20 -0800 (PST)
Received: by mail-pl1-x636.google.com with SMTP id u5so4412210plq.7
        for <devicetree@vger.kernel.org>; Mon, 27 Feb 2023 11:04:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:sender
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PiKzX7nLI7G1IqFz48R7pfEXPfMPncNkPqdG6uJi5qI=;
        b=YRO6X59yEJVbQjZgUxz6V6LErv2qT3tMFszA1BBjdUqFt+oDgID3+LjaazEp88EQyC
         fmKlr5whzGCeIB4G7oatWN8QUq3Hkcmei8Sr6NLSw1kmcM/WKf7y4H8gOoU3Pao4pxQa
         79pKI08agLzDu42JGbav3rwgkgJlpCkdwrxT6/iBEiWIIK+2aXL+1057MmUCB6Ci5ZCD
         j6GKbM6EK8+QwaGJELs5G7oM1QIG5sed6HyNR5wBqYMj99nH3v9pTXbymIY5ux4vPJcs
         H1Dvol9prZGSNObNe7oXH1M3UIMTSFEmuSjfVgHsTf6zgyUM5HeysvE4oNss3akw7U6B
         e5xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:sender
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PiKzX7nLI7G1IqFz48R7pfEXPfMPncNkPqdG6uJi5qI=;
        b=dcNSSolRyyOJ0ANhQVsOMPqXWhK81jI8mValripJU7bI8GAUj7CeYGNfVoHjnrMCWa
         81Qq0GNU0nSQ8Y4Pb83GGBFITg+pAUsWJuJaeSAiDgkqdnDG5NOP2jTCA4SbLTdBBV7u
         hIMpIS1mqr30pS+Hid2ZE7GoNNJslRGo8tXVw1aoHHfbbBgtS9/WN/XQjCDxHhIDr6U1
         8NKFYqM9vawNjS8PdAP8dTmBdA9Q3D00C1I1UToCO/lcOVIcZj4mpdGMZj5Ajj75FQq9
         B5wbIsD1MZU5pC0CP9bZrGgYxMKk7UxJNxXZtTX9lHVW5BsriJwbYvYnyxINmQfv3pl4
         CSoQ==
X-Gm-Message-State: AO0yUKU/zF91Dxg3wiyDiNtKEfLU8oAYypnGm9lqFt3D1Y9/ZbhKGmVh
        zlspdmyPlkC2ECDlNxUH/6I7PYGG+m7ryRUTUIs=
X-Google-Smtp-Source: AK7set9d29ZGjwsGm6MXSzuzzeHgKOfENpJ7n65LgWnOQLUeUp51OEhYlrcDh1uUGpKSL5uJA2RHW6skQuM4tLOP9Xk=
X-Received: by 2002:a17:90a:5ac4:b0:237:3d0c:8d2e with SMTP id
 n62-20020a17090a5ac400b002373d0c8d2emr135071pji.2.1677524659554; Mon, 27 Feb
 2023 11:04:19 -0800 (PST)
MIME-Version: 1.0
Sender: a.ragnvar50@gmail.com
Received: by 2002:a05:6a06:78a:b0:5dd:22e7:dc97 with HTTP; Mon, 27 Feb 2023
 11:04:19 -0800 (PST)
From:   Stepan CHERNOVETSKY <s.chernovetskyi@gmail.com>
Date:   Mon, 27 Feb 2023 20:04:19 +0100
X-Google-Sender-Auth: CAHJyGa9m_DDBuQ5xp1HivuKf40
Message-ID: <CADmpa4F0fa-aWa0rq47jZJTREhK7iCV8YhKURUCYFk7q1CCFSA@mail.gmail.com>
Subject: With All Due Respect, Please I Urgently Need your Help Now;;;
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: Yes, score=7.0 required=5.0 tests=ADVANCE_FEE_5_NEW,BAYES_50,
        DEAR_SOMETHING,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,UNDISC_MONEY autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:636 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5008]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [s.chernovetskyi[at]gmail.com]
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [a.ragnvar50[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  2.0 DEAR_SOMETHING BODY: Contains 'Dear (something)'
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        *  1.1 ADVANCE_FEE_5_NEW Appears to be advance fee fraud (Nigerian
        *      419)
        *  3.1 UNDISC_MONEY Undisclosed recipients + money/fraud signs
X-Spam-Level: ******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dear Sir/Madam,

Please do not be embarrassed for contacting you through this medium; I
got your contact from Google people search and then decided to contact
you. My goal is to establish a viable business relationship with you
there in your country.

I am  Stepan Leonid CHERNOVETSKYI, from Kyiv (Ukraine); I was a
businessman, Investor and Founder of Chernovetskyi Investment Group
(CIG) in Kyiv before Russia=E2=80=99s Invasion of my country. My business h=
as
been destroyed by the Russian military troops and there are no
meaningful economic activities going on in my country.

I am looking for your help and assistance to buy properties and other
investment projects, I consider it necessary to diversify my
investment project in your country, due to the invasion of Russia to
my country, Ukraine and to safeguard the future of my family.

Please, I would like to discuss with you the possibility of how we can
work together as business partners and invest in your country through
your assistance, if you can help me.

Please, if you are interested in partnering with me, please respond
urgently for more information.

Yours Sincerely,
Stepan Leonid CHERNOVETSKYI.
Chairman and founder of Chernovetskyi Investment Group (CIG)
