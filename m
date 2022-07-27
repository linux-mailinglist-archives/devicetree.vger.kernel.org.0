Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3D01F582702
	for <lists+devicetree@lfdr.de>; Wed, 27 Jul 2022 14:49:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233393AbiG0MtQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jul 2022 08:49:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232641AbiG0MtP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jul 2022 08:49:15 -0400
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com [IPv6:2a00:1450:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D43C40BFE
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 05:49:11 -0700 (PDT)
Received: by mail-ed1-x541.google.com with SMTP id v17so1694027edc.1
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 05:49:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=Q6KyBXFmt61OX4uWmQraUrYXlknT4Vms8Xk1f/Mgr2g=;
        b=oaCprvrfo+pn16tLdG0gYZgjqEoWd1rUX+qXvrRZ2Og8sJKSe9VFblNtqP9KKBA3Cd
         vRZ3TFmHDumclaIWQEwSkytXCNAX8V6lZC30iwsBuJViSZn6Ct3xcqOr67pUhspW3WXm
         VAwBUpNfz/HwNWKsggaUhd8SPjLmv6NX3Z7oMqw2bBKrBc4mtnJPZQY4nSYiVV0zCtD9
         3oJFT8cBd/aRq0QriydUY2AFwE0l5Ik9IDkhrsJtEYUaiRksQOFZGJjKk66Wtay0XOgp
         K7HhQltqnFzcY0xucnKYrL5Im/SzwMMKzAOL9TCN/t7QMG24BJNKbu/jXZsnFL8ahK/e
         Ti2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:content-transfer-encoding;
        bh=Q6KyBXFmt61OX4uWmQraUrYXlknT4Vms8Xk1f/Mgr2g=;
        b=gCNiH6SSaMbcF9jRPQxb0FCUWMyOr7cTdAHQGEctxtsJch9xVxdn42LJNE8iGzVj+W
         AwuXDNVOpUDnKUdtFed+sO9zsEIc8/BmvrbbCpTbTgm2BI/h93tbGcN7XGsWydK21CbU
         ixhMcf5+Y7w/m61JwgqJ26sGd/Jg4MvGU9cqDiXDutPVR646jWzOXbkLFYX0tQNyeEvY
         CQZZUBhs/cxRzdHZinm9KFROM3Z7lOdMDgz27ZAY4juLEQ2OYd2fZdfFexjLJUBxZzPX
         tFoM+uXjFur5nz1rQWa5Prje1f6MOz52T0zfWdqhZ7FnGXaipUn1xhlbaFEZ3jAQsGWL
         CZRQ==
X-Gm-Message-State: AJIora8hftNllXQu7Cc2kJRKJmhq50ekny3TFwzuwqHczb7IECBCSDnp
        7+Ach1ZTI+tba2S9qoF2EGL/awb1WBkaypWvQ3A=
X-Google-Smtp-Source: AGRyM1vVsYqpDmlGw+PK5qAb1Z+86I5ejG9o5orlhRymrSCxEY5heqtBqLhltlJABXP4KKG2rCkdcAcdk/OUr1J12EA=
X-Received: by 2002:a05:6402:440c:b0:43a:1124:e56a with SMTP id
 y12-20020a056402440c00b0043a1124e56amr23910445eda.134.1658926149804; Wed, 27
 Jul 2022 05:49:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab4:aa83:0:0:0:0:0 with HTTP; Wed, 27 Jul 2022 05:49:09
 -0700 (PDT)
Reply-To: olsonfinancial.de@gmail.com
From:   OLSON FINANCIAL GROUP <brace060@gmail.com>
Date:   Wed, 27 Jul 2022 05:49:09 -0700
Message-ID: <CAFf=T-v0mpwA7DCnb8A3YvQ5VDOjMe_SHW7S_Lkm8GW_KX6Xuw@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=4.9 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--=20
Hallo guten Morgen,
Ben=C3=B6tigen Sie dringend einen Kredit f=C3=BCr den Hauskauf? oder ben=C3=
=B6tigen
Sie ein Gesch=C3=A4fts- oder Privatdarlehen, um zu investieren? ein neues
Gesch=C3=A4ft er=C3=B6ffnen, Rechnungen bezahlen? Und zahlen Sie uns
Installationen zur=C3=BCck? Wir sind ein zertifiziertes Finanzunternehmen.
Wir bieten Privatpersonen und Unternehmen Kredite an. Wir bieten
zuverl=C3=A4ssige Kredite zu einem sehr niedrigen Zinssatz von 2 %. F=C3=BC=
r
weitere Informationen
mailen Sie uns an: olsonfinancial.de@gmail.com........
