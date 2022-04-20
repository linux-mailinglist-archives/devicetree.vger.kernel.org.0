Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4F197507E7D
	for <lists+devicetree@lfdr.de>; Wed, 20 Apr 2022 03:58:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346604AbiDTCA6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Apr 2022 22:00:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346534AbiDTCA5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Apr 2022 22:00:57 -0400
Received: from mail-yw1-x1141.google.com (mail-yw1-x1141.google.com [IPv6:2607:f8b0:4864:20::1141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7C1EFD2F
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 18:58:13 -0700 (PDT)
Received: by mail-yw1-x1141.google.com with SMTP id 00721157ae682-2eba37104a2so3960267b3.0
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 18:58:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=j0a7VGXOy66Btv3mb2iswxK1Sq2Hb309OWBby+32bsM=;
        b=QR4WJTDEmde8d40OJ2/C5dOEkVOFqzYtKDNsCp9+4+hWKegusdK+ExJ2dQBVhOtEc9
         U3yk+Zr2/7JxGxdT/BooW5b5CAfmLe9mRmqBvj1BJEEr/5R/u2MsNSU+Jb3k5/K22kjR
         N5XCHXBHsvCIoKZrID9pIu0IDztzjwOAh1GV9fIgdFIWDINVrnPpOcQRFFDd+/sVcsnI
         MOV+0HAbuOlIr5QpFHIbfdUHPf6Rnv8OV0xoa/O6tN5iMu9fZH1NK+5yt4riOgH2+T8Y
         iG59pEp2+o3j2cjgXM6aefv+XylO2hM/aa7HOjgbiMUJTOHJqFZvq1WW4/FvL8bmPPn8
         mr5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:content-transfer-encoding;
        bh=j0a7VGXOy66Btv3mb2iswxK1Sq2Hb309OWBby+32bsM=;
        b=oGoCwz9ZvQnnqW0hcJS2zGR7XrwlEz1YSJDq8P7i2hedNpvjYs80rKR2TmPmpOt8PR
         6MamNZM+beQ90lQcd9cXrZGL1S/xhK4rAUtVlPMwAAlkXtsHwV7t9XBKsoObSjGYktt7
         7ULhiv6iIehCAE0zKDuuygTgno2kMYmiQOWO6aYPzrl1qPFPaM7cMWwErFKe47PycQwg
         6FnvUicuL3glhblviDfb+8fV3I64Jy/9Ju5DWrGZUTRE72kXv7jNwb0+E7KWOxxscFCL
         7JUDlwduEgs3PqK9NeIhKBYSthN9nY225N4t02nvNOTRCWl5CTRwGtebKK/ZJ2W+uOAP
         76lg==
X-Gm-Message-State: AOAM533hAPGyogkrWCmt5+624X6PV1bI6OP9EY7nAKCuhPhW8t7M5Ehu
        DnusElpzQbf3ytGYmDlHndMGowWfQ0w/BPUNDh3BUfn2N2p2SPzy
X-Google-Smtp-Source: ABdhPJzm3wb5RuQtx8UB8NyTj5HmQKZczZpH+EOkbGLJaCy4hpsdrEd+FTQJeXdiwdewZ9k222cm6n5q402j+URoBRM=
X-Received: by 2002:a81:48d0:0:b0:2ec:55f:16b9 with SMTP id
 v199-20020a8148d0000000b002ec055f16b9mr18124054ywa.174.1650419892739; Tue, 19
 Apr 2022 18:58:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7000:a507:0:0:0:0 with HTTP; Tue, 19 Apr 2022 18:58:12
 -0700 (PDT)
Reply-To: illuminatiworld152@gmail.com
From:   illuminati <abdulrahmanmangal37@gmail.com>
Date:   Wed, 20 Apr 2022 02:58:12 +0100
Message-ID: <CAL+SJK+YRyi38CnZywQhOq6y6Sjs8M9cpzpHXhgeRYKqsytHUw@mail.gmail.com>
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
        *      [2607:f8b0:4864:20:0:0:0:1141 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [illuminatiworld152[at]gmail.com]
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [abdulrahmanmangal37[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [abdulrahmanmangal37[at]gmail.com]
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
