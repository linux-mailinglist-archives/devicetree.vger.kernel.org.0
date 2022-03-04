Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 88A2F4CD1BE
	for <lists+devicetree@lfdr.de>; Fri,  4 Mar 2022 10:55:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236168AbiCDJ4f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Mar 2022 04:56:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234070AbiCDJ4W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Mar 2022 04:56:22 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91FA618BA5F
        for <devicetree@vger.kernel.org>; Fri,  4 Mar 2022 01:55:25 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id bi14-20020a05600c3d8e00b00386f2897400so1118300wmb.5
        for <devicetree@vger.kernel.org>; Fri, 04 Mar 2022 01:55:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:from:mime-version:content-transfer-encoding
         :content-description:subject:to:date:reply-to;
        bh=ixHVzoz696qN1Cmrg9x1bmR8vdWLOLbXCVjc9DtTLhI=;
        b=bE1GjSOr2lZdINwOM4IvuO2NstIbyda51ku+QI33YVYrSPtI5+4dzP2N5+lUQt7ySq
         OIcoYQMvndxEiy4ofehgKpUAtbE7WMLhZQMKzM8b79FWJKrQyUwDdUcOCCo7CTSWhzJl
         EZtISoq0Q3llDsa4TdTvLZF2+mFXUurW+ViEv23PaK5eoEa0ht67P0bxZmaLnBOwzXOa
         jnrdxiqa5665DORe8/zzA/+RLuOsY6P8k4AQjV9MEkvC1yY7Dl0cjlIb4Ozw0urJK3G0
         q1OSy8zkn7xH27wGbPaEkYJwyTfKLsTrjCu6TkpPx/CrsnjiW6WEtlb/34dootz1rakQ
         N56A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:from:mime-version
         :content-transfer-encoding:content-description:subject:to:date
         :reply-to;
        bh=ixHVzoz696qN1Cmrg9x1bmR8vdWLOLbXCVjc9DtTLhI=;
        b=o6Vzs2pNnNPJ4eUqOFu5/oYlKjr/nOpveLzxhnlo3tlCd250tKcARj4OOcUnMIeqMM
         HkLe3+RZC+xu6ZYdMAUgXF+MU1PK9FdRd4Tqe02NT5w+P8jNiQ7VqRuMUw/BeUhE7jLW
         /NgIOXWjzIjsg81WJ+0qnH2khCCKHEZY4kxBDBud0gff3nq/cMMhBDCmQI238i/09qZF
         Ldys7m1CcloAg0J+93WITRL/QO1VUVzo4rBhCJR1o2bBT0Ttc4OZyfxNMEZq7dlwMpXx
         sboNv0nAtoybwDqZH/ts4JbsmiOxLWqiKpqhJPZHYyzT7tnH5XWKd/my4aPt8Z1cMUae
         mNtg==
X-Gm-Message-State: AOAM532VhdLtICcKnxZbPD6HiKZyCRgxBXLjKQdaGLNCucszPNhy/nkY
        53vINw3GRJUqe3VOKYUrRvY=
X-Google-Smtp-Source: ABdhPJz7F9kGJZbFsYeIR/dy8+strvm/zgk0SCjCEDoZ/D5H6ahBjcKsk9IYW9+EIhT5MMBSkziN2A==
X-Received: by 2002:a7b:c148:0:b0:388:7ff8:9d17 with SMTP id z8-20020a7bc148000000b003887ff89d17mr5038697wmi.45.1646387724217;
        Fri, 04 Mar 2022 01:55:24 -0800 (PST)
Received: from [192.168.0.133] ([5.193.37.142])
        by smtp.gmail.com with ESMTPSA id p5-20020a05600c358500b0038167e239a2sm5061509wmq.19.2022.03.04.01.55.20
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 04 Mar 2022 01:55:23 -0800 (PST)
Message-ID: <6221e20b.1c69fb81.ca53d.1c05@mx.google.com>
From:   Mrs Maria Elisabeth Schaeffler <verahollinkv6@gmail.com>
X-Google-Original-From: Mrs Maria Elisabeth Schaeffler
Content-Type: text/plain; charset="iso-8859-1"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Description: Mail message body
Subject: Spende
To:     Recipients <Mrs@vger.kernel.org>
Date:   Fri, 04 Mar 2022 13:55:17 +0400
Reply-To: mariaeisaeth001@gmail.com
X-Spam-Status: No, score=2.2 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        LOTS_OF_MONEY,MONEY_FREEMAIL_REPTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,TO_MALFORMED,T_HK_NAME_FM_MR_MRS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hallo,

Ich bin Frau Maria Elisabeth Schaeffler, eine deutsche Wirtschaftsmagnatin,=
 Investorin und Philanthropin. Ich bin der Vorsitzende von Wipro Limited. I=
ch habe 25 Prozent meines pers=F6nlichen Verm=F6gens f=FCr wohlt=E4tige Zwe=
cke ausgegeben. Und ich habe auch versprochen zu geben
der Rest von 25% geht dieses Jahr 2021 an Einzelpersonen. Ich habe mich ent=
schlossen, Ihnen 1.500.000,00 Euro zu spenden. Wenn Sie an meiner Spende in=
teressiert sind, kontaktieren Sie mich f=FCr weitere Informationen.

Sie k=F6nnen auch =FCber den untenstehenden Link mehr =FCber mich lesen


https://en.wikipedia.org/wiki/Maria-Elisabeth_Schaeffler

Sch=F6ne Gr=FC=DFe
Gesch=E4ftsf=FChrer Wipro Limited
Maria-Elisabeth_Schaeffler
Email: mariaeisaeth001@gmail.com
