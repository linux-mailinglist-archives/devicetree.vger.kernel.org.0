Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 744A467244A
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 17:57:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230365AbjARQ5I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 11:57:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230394AbjARQ5F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 11:57:05 -0500
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4ABC84A235
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 08:57:01 -0800 (PST)
Received: by mail-pg1-x52b.google.com with SMTP id 78so24958169pgb.8
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 08:57:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5TS776QSf+XZfy673cDJNFU1tHVWrzQdFJV93jLAyIM=;
        b=UTTiXEXhcgQAvF1nocW2Kav/D3lwKFQqUY3WhYtgtSNob9fDZKf8JhoUkgCe8qbePa
         Buid5982Q5lRilQceOkB4bO/T8cEbgOq1itEEirXckwojm3kfOTU7/0GslGNaA3V3o4e
         b1nNaJRx4FDickripTe2UZZiLCokX2Bd202mlx77FrSl3fBpofL3zT49GRYqS2aiLtp6
         zGQ3QVnObdkLsf3lg1NA6SqHJlJBovr71seE7sxxFpqWm53vGbPzi1SweAtfTmhioiA7
         dIJrg2ocuz7o7Ld4lLCqyihAkG+GZskMhQX0V3rx7+3rn/dLmeSpXSUgKg5i6Qetevra
         9E+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5TS776QSf+XZfy673cDJNFU1tHVWrzQdFJV93jLAyIM=;
        b=U/5m3jv9gHBOM+8ZZi/wdgy5Z73Cg3kGSXgA8F3K7qpNHjmRmZDtmgRjLGV6SmChwo
         oknFzWvfzbYFFBNYRvbBnl7KQbH6zSp97M+z48cS1P1iPJ86VcP0P+m8F096NdrW4q9A
         XSW/Iifj3PBC9RuPvzaNxUYmlSyUuayf1Awasw8C88rh49wqNlAp0Fj/G2Y9IDebVCJR
         qb3SFmWkxltaDg4vjwxCmA8FJuNUkKWR5NbvlYHaCbXhWKQlLq5KfU0vmgC7m0Q1IMWD
         3P4LswKfmoT5EiwJz1JHTVedllN76rqSq7CBz2YXKzWw19uSlDP+lGcgAZaX9D0kvK/W
         oOpQ==
X-Gm-Message-State: AFqh2kpCyej3L841egIXCodXMtGULqbKtkIVcb05MRSMWe1cUC0yyW5A
        VjPYYE4bLOkaoMCGInBcdaxSW1K8H+oqxD++Ytk=
X-Google-Smtp-Source: AMrXdXu/fDDN5wQ6cH5A6VwbJ9Tbtwt7yeNTIr1Zun4Y9NgUnd3Z8C4Xurs87GFUQb+1qRo+p/JDmdLk+wU9vQAGipY=
X-Received: by 2002:a65:66c9:0:b0:478:5c3b:bf57 with SMTP id
 c9-20020a6566c9000000b004785c3bbf57mr561541pgw.358.1674061020928; Wed, 18 Jan
 2023 08:57:00 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7300:1491:b0:96:8a95:4622 with HTTP; Wed, 18 Jan 2023
 08:57:00 -0800 (PST)
Reply-To: illuminatiinitiationcenter7@gmail.com
From:   Garry Lee <abayostella@gmail.com>
Date:   Wed, 18 Jan 2023 08:57:00 -0800
Message-ID: <CABdr3XK1O1uXro7+fW+gmkOj_KmvTDOdLM3Ne9xjs3cy6+FnWg@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.6 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_FILL_THIS_FORM_SHORT,UNDISC_FREEM,UPPERCASE_75_100 autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
DO YOU WANT TO BE RICH AND FAMOUS? JOIN THE GREAT ILLUMINATI ORDER OF
RICHES, POWER/FAME  NOW AND ACHIEVE ALL YOUR DREAMS? IF YES EMAIL US :
MAIL: illuminatiinitiationcenter7@gmail.com

YOUR FULL NAME:
PHONE NUMBER :
COUNTRY :
GENDER:
