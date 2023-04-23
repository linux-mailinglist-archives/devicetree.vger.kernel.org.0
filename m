Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E3EE56EC24B
	for <lists+devicetree@lfdr.de>; Sun, 23 Apr 2023 22:45:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229696AbjDWUp1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Apr 2023 16:45:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229476AbjDWUp0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 Apr 2023 16:45:26 -0400
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com [IPv6:2607:f8b0:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD9A010C9
        for <devicetree@vger.kernel.org>; Sun, 23 Apr 2023 13:45:25 -0700 (PDT)
Received: by mail-pl1-x642.google.com with SMTP id d9443c01a7336-1a66b9bd7dfso42614485ad.2
        for <devicetree@vger.kernel.org>; Sun, 23 Apr 2023 13:45:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682282725; x=1684874725;
        h=to:subject:message-id:date:from:sender:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QnKFL26C96VIgV6J+JP4Ljyq4pSmVr5ajTDLJ4C8iVQ=;
        b=QTkvDHX5yN0tRzAAcBXG29SCtAUdt28CIGUUm/+3gDC24UeSOIUAOU2epsnML+Dt7q
         sGnSjoe7aGpBefR3bT8no1lxUeTWCzE021tSdMtzbPQ0j7RHbom2+3ozPRRYyX6mSxIu
         K9s+gKr6/oiUKEhfDpartHfo3C95zhTxmu48+yXuzwV15bVdnAsWk+ZQky0a0lVIxp9R
         mmQs0jn2iL+6XvIC4BveBnngZHG1P0Z8a+DER4UsF+bnBSt9kIJKuI7jgBm10suHnxtP
         K6V13K0OQDwOrkigWhih+K9gJNSHfKmi+FhjnMyK+4xMDGRy+sopmKccNNvsgMr9m2eO
         bfZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682282725; x=1684874725;
        h=to:subject:message-id:date:from:sender:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QnKFL26C96VIgV6J+JP4Ljyq4pSmVr5ajTDLJ4C8iVQ=;
        b=hl7DDbAL3toSlrJRW9R1vp4iGHvlEnztFQfCSF0ajZz0ioPabRPuS3Q3not0/z32Y6
         H1Cj9I7DPBSDbAyu0TX3DXFbHiSNMEipLqJA8a1tsUYCKlUpMh2olCaQSGR3PGWQHpDq
         buEi5iYhjaLXIGwcmqdc9z85ArEdPUOkIj6DliU2VC43VImDabRhrAhaBttmhDx0GMs5
         E7hlchcoF8hQU0SBdVHzld5w/7i6VutXm6AcHKexbY38L6ZAO5Dj+NySnBGi4rQuNd7d
         3w6QdowTQRSpOEqvKU/OkNS0EGmHe0bhTRQvVMhA+wMtfIcM8Du8ntGt3t5yAjks8KYT
         d9Tg==
X-Gm-Message-State: AAQBX9dUnQ5iZtvbzpmr3Fl0I70nJ85AFvTww3+x7XGhbcd+wCllZYhV
        GJA78pMB52KHVKr0UU2cOTwGzwurQrb9I/uG5aE=
X-Google-Smtp-Source: AKy350YZgKZKT/8xcyXVQGQQn9iFi6+uwTHl4pkqq5zmiCyD23cvvkX6C+G407jHjFSWtiS/NV3AZR2lptZuTEuEYV4=
X-Received: by 2002:a17:902:e5d1:b0:1a1:e237:5f0 with SMTP id
 u17-20020a170902e5d100b001a1e23705f0mr14597585plf.58.1682282725109; Sun, 23
 Apr 2023 13:45:25 -0700 (PDT)
MIME-Version: 1.0
Sender: my6556286@gmail.com
Received: by 2002:a05:7022:3715:b0:5f:b043:71cb with HTTP; Sun, 23 Apr 2023
 13:45:24 -0700 (PDT)
From:   "Mrs. Margaret Christopher" <mrsmargaretchristopher001@gmail.com>
Date:   Sun, 23 Apr 2023 14:45:24 -0600
X-Google-Sender-Auth: 9u_Okdx16L8HVKGapSLJB1QnxIA
Message-ID: <CAF9PdM02WuOYeg5G_8iKcbVax6P0DHMy=x+FBb16vBGXD3-3OQ@mail.gmail.com>
Subject: Humanitarian Project For Less Privileged.
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,HK_NAME_FM_MR_MRS,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
Hello Dear

  Am a dying woman here in the hospital, i was diagnose as a
Coronavirus patient over 2 months ago. I am A business woman who is
dealing with Gold Exportation, I Am 59 year old from USA California i
have a charitable and unfufilling  project that am about to handover
to you, if you are interested to know more about this project please reply me.

 Hope to hear from you

Regard
