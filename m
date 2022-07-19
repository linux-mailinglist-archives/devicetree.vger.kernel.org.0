Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EE1C857A825
	for <lists+devicetree@lfdr.de>; Tue, 19 Jul 2022 22:20:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232986AbiGSUU4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jul 2022 16:20:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229939AbiGSUUz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jul 2022 16:20:55 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98E3B33A08
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 13:20:54 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id r14so4000799ljp.2
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 13:20:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=lLG88JCPgF7Yhflf4FNi4GQedsSNMbwmPtgneUr9Mu0=;
        b=qK59BVyW8busz5M+nd35+5bCcQUjl5Mze3cjC9bSSspUQLxT9utRKA5fHb69FSLCOj
         LYXT7lpbCAPgw3lWeZuSCzqznhguZxOa93ZgPIr6bTlEraI4Fe6cREVh4+F0WhCcYnbv
         Pqg5S+21ZwUTyCDWsyMG91ZmrOCuYKgwhdf+TtcWG2WgGBPuKmPp26vHCVTLJUcL5vx+
         lZAXP0nxWSlSC6yV3k/D4D1l9CH4P9k+f9fuY5B6gid/iSYwUOqPJQUjpxQ2TBOsvoKp
         FnHIpAKNcDt5kNgLylbNFTe5X7TlKJwM+W8unqJUpMeM/kfSAl4ZWTZq61/mQQ6+pFli
         dO5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:content-transfer-encoding;
        bh=lLG88JCPgF7Yhflf4FNi4GQedsSNMbwmPtgneUr9Mu0=;
        b=O83cFuwwhwXc3xd5DVqBQ/VcYJWCJyXAQ16ImKdHp7+mCsKySFYCgAl+lt3tsKFjrn
         /xpfrqmTCnBRH2c51WcsEoEygwOxXUhNPgOS+kRA7MVLVjCQWohZkTO1aaz+Vo6ZyXhu
         bC5DzQi12+tpKCIUQWu9aF7fNmffMnqG8d5alP5eLd8J2yBG/OI9/uSbm/A3pNtFsvDY
         Er8eHby/ZMaMD3kycHShs0h2IT0gVyiVbQcs+ovNKwpAWpC9soBYQ1fZPN3Fk9Pb9FMZ
         WgprD2gC7W8vk1bLbvi2PEXQZjunORNqCMvNkWmYAhyheUh6Hs3VHBMbEhXTGTfDLAAH
         jwAw==
X-Gm-Message-State: AJIora/eoPJqgwNOyY8i2zgHutmyxtRBBFwxbWh+Gy9yduuogxcGDr0T
        1hnUxfTsAidYaGC9R9+x2hMFlmxTvJHhBIyGAlo=
X-Google-Smtp-Source: AGRyM1ueUr7L4Qz/025M3CaPEVXUrYX0IUqfbvVt/KUqtT4p3+QEFXffPfKJUA/qMGgkYVCVPrpk6/qJeDqLCIsaNis=
X-Received: by 2002:a2e:87ca:0:b0:25d:795c:6db7 with SMTP id
 v10-20020a2e87ca000000b0025d795c6db7mr16206127ljj.241.1658262053005; Tue, 19
 Jul 2022 13:20:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6520:2f49:b0:1f8:2994:4bab with HTTP; Tue, 19 Jul 2022
 13:20:52 -0700 (PDT)
Reply-To: mailfunds48@gmail.com
From:   Tom Christ <yahayabuhari92@gmail.com>
Date:   Tue, 19 Jul 2022 21:20:52 +0100
Message-ID: <CADbC8Asj9E86FoTrbXEa6qkfp4QStnx5zpowsMm0+hkM=x_EFQ@mail.gmail.com>
Subject: DARLEHENSANGEBOT
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: Yes, score=5.2 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2a00:1450:4864:20:0:0:0:232 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [mailfunds48[at]gmail.com]
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [yahayabuhari92[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [yahayabuhari92[at]gmail.com]
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        *  3.1 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--=20
Ben=C3=B6tigen Sie ein Gesch=C3=A4ftsdarlehen oder ein Darlehen jeglicher A=
rt?
Wenn ja, kontaktieren Sie uns

*Vollst=C3=A4ndiger Name:
* Ben=C3=B6tigte Menge:
*Leihdauer:
*Mobiltelefon:
*Land:
