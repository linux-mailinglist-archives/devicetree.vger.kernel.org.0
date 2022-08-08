Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B814F58CDEA
	for <lists+devicetree@lfdr.de>; Mon,  8 Aug 2022 20:44:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243732AbiHHSom (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Aug 2022 14:44:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244363AbiHHSo1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Aug 2022 14:44:27 -0400
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B9CB26F4
        for <devicetree@vger.kernel.org>; Mon,  8 Aug 2022 11:44:24 -0700 (PDT)
Received: by mail-pf1-x430.google.com with SMTP id k14so6812695pfh.0
        for <devicetree@vger.kernel.org>; Mon, 08 Aug 2022 11:44:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc;
        bh=F0L5wESdEB15bbQTjB4qJhg9thxlyPcAj1DCSHYQyJE=;
        b=oeDV60WoW3v+zJWUuSdEJCVDuLjPViYOgfAOfN1xzeI6WLMSlvtr4lislQsmbDfTE+
         RPpdWIvzycfpCr8qh57MaqL6v+0Qgen2u9gXdNfd6X3VNHtwwNfMGltzpWfE4q25OTW9
         ZFX3c2uYw0t3L78hFmUvzCdGiBbPooR0+55dlvXUDjgWvG7Jpl1FTG2nEQbBZ8P+qg+Q
         mTs9QPH/Nw7H+nh/OxUnyaAi9KjlOqaPxOM7omArL8Mu3OIPwOjM86yCLzSMl/UbDfuZ
         hII2++g0kOwLc8QTwkSD3tJxtIfnetizzX3YmawHPBwSqTZofvwLG2hifyPeC9OfV551
         dtbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc;
        bh=F0L5wESdEB15bbQTjB4qJhg9thxlyPcAj1DCSHYQyJE=;
        b=uucQVic9vyQ/s3dAtaGErzj82i9KULfzzM2Jwio/PTYrtJGs6hZFHwrD9bsUTji/Xw
         AEpvbNtFv8pjSpN/3+tKAdpDQqhxeh6v8i9lWxxS6qbaADpj2P70lrmkthEiCOmnOzDT
         v144uO24Im7kScw+4ZUp6l8EtBNWW64dAB8C0IHF2efJ2CFAsHBkfsWibLiQHZkGWbat
         5FOnU3f4gfQgGCo1smchwYdHUVVrKgET92wF7z1a7T2/D2dkg5368/grLm8Yfl+PP4l9
         7WyGG+KQiEwtZfEpH8e3lcvK1W0LxxbTj++r9WAsSoZbkYiODZUVoKTnAxG1Y07qMJ6P
         ZK7Q==
X-Gm-Message-State: ACgBeo2p9cWLvvcWaBHyKwEwpZhW+66zngqO/qlnfbjztMUl12E7y8Bd
        Cu2cmb65RG4Szc4ZJ/DjHokTrMeteVEha9Q4Mz7SRJ+gFlrWoA24
X-Google-Smtp-Source: AA6agR4IYIYnM/djEyE3rMhIBR4c3AcNmoEKSMjZZrCjnNDZ66WyqX3Yep8xyPgaYiJKup+nplvQrboHrxVV08FBgcs=
X-Received: by 2002:a63:191f:0:b0:41c:e4a0:1e1d with SMTP id
 z31-20020a63191f000000b0041ce4a01e1dmr16383755pgl.618.1659984263559; Mon, 08
 Aug 2022 11:44:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7022:6885:b0:43:7e4e:521d with HTTP; Mon, 8 Aug 2022
 11:44:23 -0700 (PDT)
Reply-To: mrsvickyandy470@gmail.com
From:   "MRS. VICKY ANDY" <godwinasaa77@gmail.com>
Date:   Mon, 8 Aug 2022 11:44:23 -0700
Message-ID: <CACWg3ZXWOJMf11tzxz7VERq79vk=no0a_iHf=66Vh9TskRNY_Q@mail.gmail.com>
Subject: Your Abandoned Package For Delivery
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.2 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_HK_NAME_FM_MR_MRS,
        T_SCC_BODY_TEXT_LINE,UNDISC_FREEM autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:430 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5818]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [mrsvickyandy470[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [godwinasaa77[at]gmail.com]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [godwinasaa77[at]gmail.com]
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  0.0 T_HK_NAME_FM_MR_MRS No description available.
        *  3.1 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
Hello My Friend,

I am Mrs. Vicky Andy, I am the Assistance Inspection Director,
McCarran International Airport, Las Vegas, Nevada USA. There is a
package which has your name in it and after some search, I came across
you and decided to contact you via email. For more details, send
contact me on my email: mrsandyvic@gmail.com or whatsApp me on: +1 312
960 4348

I wait to hear from you soon.

Best Regards,

Mrs. Vicky Andy
