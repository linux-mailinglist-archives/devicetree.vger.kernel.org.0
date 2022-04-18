Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B1ABE504A31
	for <lists+devicetree@lfdr.de>; Mon, 18 Apr 2022 02:24:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234527AbiDRA0j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Apr 2022 20:26:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233429AbiDRA0i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 17 Apr 2022 20:26:38 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DAC8B7DC
        for <devicetree@vger.kernel.org>; Sun, 17 Apr 2022 17:24:00 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id r13so24384212ejd.5
        for <devicetree@vger.kernel.org>; Sun, 17 Apr 2022 17:24:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=j0a7VGXOy66Btv3mb2iswxK1Sq2Hb309OWBby+32bsM=;
        b=Mc21JJOOQRm4ubZXDRu+I4sLjvqNAGzNpyPkbxt7r/1vrPBXGE2kbi5TROEyQ390pQ
         IZS3CJaW9fakD73O7EhZ5wx266kcVjK7UXFAMmObyebhhGte9FqtPuS1EpjxtJDW8nwi
         kVkgIavT4bS8ktsIhWnHhkTduV1c666NHMkZn97/8zZeYrnXVLdIy92O+7yKBuDPNIBw
         I++5Ld6GUZmnadYQDwES6eQNHJo51ztOf+4Vkf+5p7In3n+xNKpmCl0MA6n40GkSoLOx
         5xpytQUQsY9Z0Ty2Chf17dcWSBWKzDRibs2u5gz3KtqMRhmYYM0wyUjzFWkDFCf5Oxug
         h1Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:content-transfer-encoding;
        bh=j0a7VGXOy66Btv3mb2iswxK1Sq2Hb309OWBby+32bsM=;
        b=3pVLeEOW6DPd3qSEO+mRssTKGhwrU4jvTecMPbO69B5iPCxsi9SiaYPc71X4ujPMSn
         /HBbkLygmMWkMfU+PQF0i82MC6hClYZ6RnRgAHxK3o1hWTpO5uKLGyGIhSlPLp7AmLmy
         r7WlO7QUzirWhTWXPdugl8ZChi7ELYIamsI414+E9kThc9kwoM7VV27Q8FiEmZkfiF/T
         Qnljlbtdwm4rGREa1O+9lnFK3yiixs9+Jm0jYnX6FtCIYtXpnGWEG7dgBfn1pFapf7TH
         bKFHE1yKwhPjsX5/exa5NF4qxbnUSFZc/At8DT18Kq3MG71kHtJjhftttAKUVkJay27S
         SLYg==
X-Gm-Message-State: AOAM532Js+p879tDczCV4t88F/1gS1CUlD6u5YA6NIoVOv8hgGnyV3nK
        Rc5BT67vQL9dk1UmsOwZUbTSd8zQcYqDqUpOHHk=
X-Google-Smtp-Source: ABdhPJwv/bukeIJe41L+cFsjauPYRVmqosZG2AZzxo1t1e6DcXRDqzW4fdS5t1a5aUsogwmzNTepzzKwDKt+SF9w3GI=
X-Received: by 2002:a17:906:c151:b0:6ef:611c:3a65 with SMTP id
 dp17-20020a170906c15100b006ef611c3a65mr7027222ejc.59.1650241438904; Sun, 17
 Apr 2022 17:23:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:907:7e99:0:0:0:0 with HTTP; Sun, 17 Apr 2022 17:23:58
 -0700 (PDT)
Reply-To: illuminatiworld152@gmail.com
From:   illuminati <ridwanumar185@gmail.com>
Date:   Mon, 18 Apr 2022 01:23:58 +0100
Message-ID: <CAAmw9obcjhKrGHecS9C=+BqrVszg8g7xv9e0i9xWi_vxfsKekw@mail.gmail.com>
Subject: RE
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: Yes, score=5.7 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2a00:1450:4864:20:0:0:0:62f listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [ridwanumar185[at]gmail.com]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [illuminatiworld152[at]gmail.com]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [ridwanumar185[at]gmail.com]
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  3.6 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--=20
Hallo, ich bin Friedrich Justus aus D=C3=A4nemark, gl=C3=BCcklich verheirat=
et,
ich bin Mitglied dieser gro=C3=9Fen Illuminati-Bruderschaft. Es wurde unter
den Prinzipien der Liebe, Gerechtigkeit, Einheit, des Friedens und der
Erleichterung gegr=C3=BCndet und lassen Sie sich nicht von Ihrer Einladung
verwirren, denn Sie wurden ausgew=C3=A4hlt, weil die Illuminati einen sehr
reichen Mann in Ihnen sehen, Sie werden derjenige sein, der den
Menschen helfen wird brauchen  . die Obdachlosen werden sich an Ihnen
erfreuen, Sie werden die Armen mit Hilfe der Illuminaten ern=C3=A4hren, wir
k=C3=B6nnen Ihr Gesch=C3=A4ft verlagern und wir k=C3=B6nnen Ihnen jede gew=
=C3=BCnschte
Position an Ihrem Arbeitsplatz geben oder kreativ sein und der
Eigent=C3=BCmer des Gesch=C3=A4fts in allem, was Sie tun, Sie und Die Illum=
inati
bringen Menschen guten Willens zusammen, unabh=C3=A4ngig von ihren
Unterschieden und Hintergr=C3=BCnden, und machen diese guten M=C3=A4nner /
Frauen in der Gesellschaft besser. M=C3=B6chten Sie ein Mitglied der
Illuminaten sein und reich, ber=C3=BChmt, m=C3=A4chtig und herausragend im =
Leben
werden? Bitte antworten Sie auf diese E-Mail:
illuminatiworld152@gmail.com oder WhatsApp der Gro=C3=9Fmeister mit
+13159682193
