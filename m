Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D0A6D549EA2
	for <lists+devicetree@lfdr.de>; Mon, 13 Jun 2022 22:11:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347539AbiFMULh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Jun 2022 16:11:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350321AbiFMULO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Jun 2022 16:11:14 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A52CF248C2
        for <devicetree@vger.kernel.org>; Mon, 13 Jun 2022 11:45:27 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id u12so12815210eja.8
        for <devicetree@vger.kernel.org>; Mon, 13 Jun 2022 11:45:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=VaLdCxxT6H+yQ21ljsJJCI0JVFTWEh1IT2eBGtm6sxQ=;
        b=S6NqncN/YXd30wanyiEv+b6a2+ZEMsmeF7R9zzNKWzfk7RIhY7zN78xibXL/hVvPaB
         avceTYyGLjnY7Vkjsls+vFkjOFQ/T1K9Ut7dtOc4bFM1Tj6grA5Bp2uqrfqPcjkrfIlI
         7OT2beBKLq4rcY7jmVkrMsSjNN6aVKzDo2xSfMUbyp5eGvlZza28XnYheqbVrkEaiBnX
         leZRnqHq2395PSYvIE7u6qQ7JT/1+wFWKPOc3J5QJnEs/YNKQ3oUgfvlJGVgp8ugO6zI
         lvWJ6ACLNAaUa6Uy8S6M9LxI24baxd1BX9S25xzKC1uLXdHZ6QeUJdI6H5VlS2IOPexH
         TLnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=VaLdCxxT6H+yQ21ljsJJCI0JVFTWEh1IT2eBGtm6sxQ=;
        b=NEABBIhOhpp2dsfmDmE7WuxeDX7In8scU+PhGabzeceODutax321kPHyaXJxpdawND
         Yv7ZeD5GOgSvvUnPJyQvalacDp6JDV1yHi9ogmZG++7WIAWEhRjwg+s8jWLNY8HnCKCS
         IISIuFD4fBk9yRAiKzeBFe1xGCKjJGO+xuMNdObjkHjrGKe7V2M7x2mpeUfnEsusXEZK
         AtMt0QkD5axNHOEnQavgN4x3VtfhAsTcTGCz/rYNa4di1AjWv00X6UKcoTdzbsxIp0ut
         YYwe3PJw32xgDzG6rJBh2WbwTWd7NgTYiv543WtBzqOIplmRwP18msS5jsEL5AcJMkvg
         cNZA==
X-Gm-Message-State: AOAM533CVI2J6jOQR6M1aycyxmPkXIBznIEVDXICJ9WaE7I55msGI2Jw
        /dr/u9ibUUkvlyasvdsIzrPwYvQ27/3AsnOmcPc=
X-Google-Smtp-Source: AGRyM1v1kgalZ4cDqllYMJdEpdCuLfZBjtSIr/ovN0ScA4MUhBOvvQITVRjZX5l1G+B6HUZxPlBo990TBmu6/i2/DCo=
X-Received: by 2002:a17:907:724c:b0:711:d0bc:2369 with SMTP id
 ds12-20020a170907724c00b00711d0bc2369mr1022379ejc.23.1655145925803; Mon, 13
 Jun 2022 11:45:25 -0700 (PDT)
MIME-Version: 1.0
Sender: ahaijout@gmail.com
Received: by 2002:a05:6f02:63a8:b0:1e:3602:3b25 with HTTP; Mon, 13 Jun 2022
 11:45:24 -0700 (PDT)
From:   "Mrs. Aisha Gaddafi" <aishagaddaf95@gmail.com>
Date:   Mon, 13 Jun 2022 11:45:24 -0700
X-Google-Sender-Auth: 7OlriW6jI9hx4BBFMKUGCGd6hn8
Message-ID: <CAOCce-z9VDMEnvKKgOL_btsmcYgvcmDXt7qXk869LwcAFv77EQ@mail.gmail.com>
Subject: hi
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=2.2 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLY,
        LOTS_OF_MONEY,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_HK_NAME_FM_MR_MRS,T_SCC_BODY_TEXT_LINE,UNDISC_MONEY autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
Please i need your kind Assistance. I will be very glad if you can assist
me to receive this sum of ( $8.5 Million US dollars.) into your bank
account, my name is  princess mercy i am 21years,i need who will help
me save  this fund,
i lost my father and only brother,
Please contact me through my private email:(princessmercy68@yahoo.com),
 for more information
