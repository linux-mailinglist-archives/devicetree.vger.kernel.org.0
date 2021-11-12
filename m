Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C273B44E46A
	for <lists+devicetree@lfdr.de>; Fri, 12 Nov 2021 11:12:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234778AbhKLKPh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Nov 2021 05:15:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234656AbhKLKPg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Nov 2021 05:15:36 -0500
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com [IPv6:2a00:1450:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E08D4C061766
        for <devicetree@vger.kernel.org>; Fri, 12 Nov 2021 02:12:45 -0800 (PST)
Received: by mail-lf1-x143.google.com with SMTP id br15so17337858lfb.9
        for <devicetree@vger.kernel.org>; Fri, 12 Nov 2021 02:12:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:sender:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=ryMDXG8u8nq91tliEM1jiAtuCmRdwdK2Akbl4Dq/sjs=;
        b=DxX1aW/RHnVNKpvsHXWpRx8x12jJHY10WKKNmkCdjIAvBdjvdrG87ClHKLSi3mIUN2
         xFWRbmRf/nrTZ8U/1HkYG3NL8pa185zLgzsKmMNEi8r4bTWbmeQR5bHT6ZST+ArBQ4Cl
         tgplX7SWRMhTNL3oK03zvl6CRnKIVKAIG9HjNcGm2Cvl3PFy650mfvFEOLqUN4y1TUDF
         h72q/SXD0f75UfqvmnBxcsS5BKKOYhRTWuv2gM6rnXt8MBUvuHE6x0jqPA02g9WLTDLr
         2s+PN1nLNJQ+IeienJRMiGJm/TzFrE9TxgOT5HIbFaDgUvNlvW1odW3rw8IjLnd6sFF3
         KJmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:sender:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=ryMDXG8u8nq91tliEM1jiAtuCmRdwdK2Akbl4Dq/sjs=;
        b=F9MuHMhAMDDi5Sj2XnU7jP9+Poy4UWRw7Jgo0kEtHn82GhD3AFCa6k40g5cS/beQMI
         jjKn05HH7iORYEIYQpG55UU2uCuMMvtB/5LDpYUnUgNMf45rtw/09XTW2cERBQcG/xXh
         xQSfhD4SguplsMiSxxK4Hs8TjSy7hiadFH+Iw5qyXQacvZIm7fkqibXkaxB+KrtuDV4S
         8KujMujCUFMsj4YFqUsRUe0MU4go+h2ukU6UqjvgvHnGCktVx0Lm9jgrLbBpSblVMk9n
         7qjgykITVKoZBeFP98PO0E8QyNgYraebVi69YPTfEkW8P1oHbMYdPJMPdSL8TSQNoEx1
         Nfvg==
X-Gm-Message-State: AOAM530SM2GU3Me5eBp8g4EbFknnpUPGyU/2uCLcxqA7LOLFAIUFlDB0
        1oIH+uDgK4co3pb2swKpPK/YZ5Xxw6kE88SFkN8=
X-Google-Smtp-Source: ABdhPJyuIbVpJD6kjd0IHZBEiMZA6bi3U2gqzr4poOLslx9RWT5Y3yCc/MMr9sdYy++vLPbXPT7JwGawKYHBzJmEUV4=
X-Received: by 2002:a05:6512:33c9:: with SMTP id d9mr12186902lfg.615.1636711964155;
 Fri, 12 Nov 2021 02:12:44 -0800 (PST)
MIME-Version: 1.0
Reply-To: mrmahammedmamoud@gmail.com
Sender: emailbusiness4u@gmail.com
Received: by 2002:a9a:638b:0:b0:14d:4e2d:f918 with HTTP; Fri, 12 Nov 2021
 02:12:43 -0800 (PST)
From:   =?UTF-8?Q?Mr_Mahammed=C2=A0Mamoud?= <mr.mahammedmamoud0@gmail.com>
Date:   Fri, 12 Nov 2021 02:12:43 -0800
X-Google-Sender-Auth: Z6p-ukfrI6WIBjpNluiiIJRXWjo
Message-ID: <CALf1eZMgpXL9s8DjTBiEJLU098W3DtbTENRRhqLkBBCKBy9MDw@mail.gmail.com>
Subject: Von: Herr Mohammed,
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

 Guten Tag,

Ich bin Herr Mahammed Mamoud, Account Manager bei einer Investmentbank
hier in Burkina Faso. In meiner Firma wurde ein Wechselkonto von einem
langj=C3=A4hrigen Kunden unserer Bank er=C3=B6ffnet. Ich habe die M=C3=B6gl=
ichkeit,
den Restfonds (15,8 Millionen US-Dollar) f=C3=BCnfzehn Millionen
achthunderttausend US-Dollar zu =C3=BCberweisen.

Ich m=C3=B6chte dieses Geld investieren und Sie unserer Bank f=C3=BCr diese=
s
Gesch=C3=A4ft vorstellen, und dies wird im Rahmen einer legitimen
Vereinbarung durchgef=C3=BChrt, die uns vor jeglichen Gesetzesverst=C3=B6=
=C3=9Fen
sch=C3=BCtzt. Wir teilen den Fonds zu 40% f=C3=BCr Sie, 50% f=C3=BCr mich u=
nd 10% f=C3=BCr
die Gr=C3=BCndung einer Stiftung f=C3=BCr die armen Kinder in Ihrem Land. W=
enn
Sie wirklich an meinem Vorschlag interessiert sind, werden Ihnen
weitere Details der Geld=C3=BCberweisung mitgeteilt.

Dein,
Herr Mahammed Mamoud.
