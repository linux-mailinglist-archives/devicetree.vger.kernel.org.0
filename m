Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B0C0A549EB4
	for <lists+devicetree@lfdr.de>; Mon, 13 Jun 2022 22:15:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350934AbiFMUPj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Jun 2022 16:15:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351018AbiFMUP1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Jun 2022 16:15:27 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 509CD6C578
        for <devicetree@vger.kernel.org>; Mon, 13 Jun 2022 11:50:56 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id bg6so12976538ejb.0
        for <devicetree@vger.kernel.org>; Mon, 13 Jun 2022 11:50:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=VaLdCxxT6H+yQ21ljsJJCI0JVFTWEh1IT2eBGtm6sxQ=;
        b=ZW2CuAc07cKBQ/UMIcaC/1hXU+qlVaWnx2/SD09NEDVCYIWZ5mkDEGa42o+4wVi2VW
         9KCMUdHrdvDll4aLdmMenlJPeF8kUFp1+NGcbPZjYzXEAKZWNjtevG1+igd7WudI7AwP
         fjptFMEZQgmCYmKrKqz7ezTGmEJAb1HMFQJ2TEiKq80bZYfsonjd9KXlPOpW7BxhE559
         YZaQP7jAxofnjqHSaz+PxuS7alQLe+XjSvEBkLB7YkznUr01M0vhyDNolzDGPdT7IA91
         G3Sl4QSDZFI9Im0qGoQbVHjiA46BxVjzTKp5u+4T2F4yEqRH0HNy3a/AzszaWSgzwmEF
         IBlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=VaLdCxxT6H+yQ21ljsJJCI0JVFTWEh1IT2eBGtm6sxQ=;
        b=DEH4vPJvp9spemT/IR8E04RMlzJJhbtyvpHzE3mWMMUGDL28ciEob9mOsMsCOIgYx1
         eKMRWl6tq9cDgUwLYKx5jGzJiCQEf1gLI4+UuiAcrb+IfNpOFD5yKa+yrGsJ2YfGVhI/
         Dy4Gz/tOyFZJwLPvLWPGErVV6ObAJ6g2hlhpW3hZgF7q6MfFzggvjnmseOfs2EhV6NdV
         H7EfSuFby1dzpmAA3GhEbaXHzqmHVZEHRfFj6i/rmk/UOYYMNBxL4DPFrl2KPZO1oFGG
         XgKyHyKn31jrddpBTLNSHiHWOUBKvlZOFaMDCJ4hiMRw9jLrdw9PZDLyvo3jAGIdZtTL
         6pFA==
X-Gm-Message-State: AOAM533B461gnU+vJnuXZ9Q/dfJjhOKFDSKBYs75LADRxm/EzoU2Py49
        0xxit4iCEBMd0JVfXTuPIc230gzrHAOeYwIBLx4=
X-Google-Smtp-Source: ABdhPJyoHnLV+DbCavyF3gz/LuINDGFTjWLlCzq2nP7xv6aRXtC7t3Hk7+Xwhsu9w6kJx4pSSKmF6jhNEQ88M+mroyg=
X-Received: by 2002:a17:906:8454:b0:711:c970:227a with SMTP id
 e20-20020a170906845400b00711c970227amr1070335ejy.4.1655146254507; Mon, 13 Jun
 2022 11:50:54 -0700 (PDT)
MIME-Version: 1.0
Sender: ahaijout@gmail.com
Received: by 2002:a05:6f02:63a8:b0:1e:3602:3b25 with HTTP; Mon, 13 Jun 2022
 11:50:53 -0700 (PDT)
From:   "Mrs. Aisha Gaddafi" <aishagaddaf95@gmail.com>
Date:   Mon, 13 Jun 2022 11:50:53 -0700
X-Google-Sender-Auth: S0q9X9e05N2t9RBWeRXnxtU911Y
Message-ID: <CAOCce-w0VcZj=DX2GUwtNXVb_Y8w5qmuLgsOi=8A6iAhVo+Phg@mail.gmail.com>
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
