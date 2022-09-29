Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 33F755EFDDE
	for <lists+devicetree@lfdr.de>; Thu, 29 Sep 2022 21:23:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229968AbiI2TW5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Sep 2022 15:22:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229805AbiI2TW4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Sep 2022 15:22:56 -0400
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E094145970
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 12:22:55 -0700 (PDT)
Received: by mail-pf1-x433.google.com with SMTP id g130so1703448pfb.8
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 12:22:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=firstdatasolution.com; s=google;
        h=content-language:thread-index:importance:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:to:from
         :from:to:cc:subject:date;
        bh=gBxhmU6An3MADswK/ouLzgeluR+hPTyQpjp/m7Ctir4=;
        b=RxpnMMx1tn2NFYGC8z5AJLJS3BqviaNJkNcQxoPk7s2i2NkTLicvcbFomUIQ76VzMk
         HSbHp984airt51SqTA1/sSIATOnpRUF7Uo36nBsceoa2wxFbScv1bJZta3BNnUjSI4BN
         IQm3fJglwrJuBockozlwdnYwU8nyPCWlo1TwXM7zzUD+hh/XuL8+BioD8cpxj1SerR+M
         xkeqtMHp24+yjPAks52WO0NASL7zTSX7Ltg1QTsvnW6RFpKIBnoo1a2jljDWiGTK1Get
         lm1sAMphb4I2+50GMFX3tdGInIsTWIuqlQItEkzeBeM9WiO5HvF+31OuzjSLBO+QdJep
         uGPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-language:thread-index:importance:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:to:from
         :x-gm-message-state:from:to:cc:subject:date;
        bh=gBxhmU6An3MADswK/ouLzgeluR+hPTyQpjp/m7Ctir4=;
        b=fzwEGru8QGlhORQFPQBsyQLbyNav4vKWIP0eSM6ItN9lZl6/LZT7o8Zl5bnEBaOvDj
         2eNOhs3G9T4zybqBDUogTgmpiAV6fqISZgMZ8Cl7SiVvYUM2oKytyiW6ckERWa8ASaP9
         zvDDcew/FX+DLN3jlFi4E2HnN9yw4iAMHyqNxbHChCv7ZA6sgh3UBQMuzuYxgnBSjgex
         SzL5bkMJ+og9ry4NgQTKabzXk98ahGhi/EuGY20yhyWHPv+2Z/Bj/puKkpdtvohNkIvT
         z6u6sLpUQwZhDZWQprVYwwtFknGS6yXEFa/CbPKfMvJE/SQTrZU3CHoIwLfQW8z2S6fK
         vuLg==
X-Gm-Message-State: ACrzQf2CFb/WJWmx6zmZ7w+qYidZy6Bs7Czi0wiTAIZ1WezHs0trRla1
        cM0RJxGO5K6Q9LcVZISKMnWn9A==
X-Google-Smtp-Source: AMsMyM64KibG/m8j+pG4l7E2i8WZlFxNd6tgChc55MWq99g8Om0FZpX8ru9irJH1tDSf0qsTAbdySw==
X-Received: by 2002:a63:8143:0:b0:43d:c6cc:ef48 with SMTP id t64-20020a638143000000b0043dc6ccef48mr4149817pgd.468.1664479374914;
        Thu, 29 Sep 2022 12:22:54 -0700 (PDT)
Received: from DESKTOPR3SMN2M ([2401:4900:3315:84c1:6d58:d775:7818:de6c])
        by smtp.gmail.com with ESMTPSA id l4-20020a170902f68400b0017824e7065fsm235263plg.180.2022.09.29.12.22.30
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2022 12:22:54 -0700 (PDT)
From:   "Sarah Jones" <sarah@firstdatasolution.com>
To:     "'Sarah Jones'" <sarah@firstdatasolution.com>
References: 
In-Reply-To: 
Subject: RE: Mobile World Congress Attendees Email List-2022
Date:   Thu, 29 Sep 2022 14:22:30 -0500
Message-ID: <367e01d8d438$df4b22d0$9de16870$@firstdatasolution.com>
MIME-Version: 1.0
Content-Type: text/plain;
        charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Priority: 1 (Highest)
X-MSMail-Priority: High
X-Mailer: Microsoft Outlook 14.0
Importance: High
Thread-Index: AdjUNnsoVonWGR2QSfKm4pKdalLl1QAAbcIgAAAAUHAAAAApkAAAAISwAAAAJZA=
Content-Language: en-us
X-Spam-Status: No, score=0.6 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_FILL_THIS_FORM_SHORT autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dear MWC Exhibitors,

Mobile World Congress Americas - complete attendees list is available now.

List Includes :- Org-Name, First Name, Last Name, Contact Job Title,
Verified Email Address, Website URL, Mailing Address, Phone Number, Fax
Number, Industry and many more.

Number of Contacts :- 30,586 Verified Contacts
Cost :- $1,879

List will be provided for unlimited usage.

Interested? Email me Back, I would love to provide more information on the
list.

Kind Regards,
Sarah Jones 
Marketing Coordinator

