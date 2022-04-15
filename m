Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0E416502645
	for <lists+devicetree@lfdr.de>; Fri, 15 Apr 2022 09:34:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244338AbiDOHhW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Apr 2022 03:37:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242018AbiDOHhV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Apr 2022 03:37:21 -0400
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com [IPv6:2607:f8b0:4864:20::835])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27E3631938
        for <devicetree@vger.kernel.org>; Fri, 15 Apr 2022 00:34:54 -0700 (PDT)
Received: by mail-qt1-x835.google.com with SMTP id s6so5537612qta.1
        for <devicetree@vger.kernel.org>; Fri, 15 Apr 2022 00:34:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=4vfQyttDdobHbBrio36ZO852PxT9+1cO/BhU8vf48uk=;
        b=BKgata18YvkutbewnS+EojKp6+HbZfrrh7ugGRe3hjMkTVSd4xJIOIBiL2oOXjAmHI
         Nz8H0t6mPyPc+TqJC0lyJVSDz/mWFNepCOqkpt5RE3K9EDej7F7jYla+pLiqiNwtVmNS
         bVnMV8q5N7i6iZAxp6es8se3/7yun8fFVvBOwWhabMhH8H8VMgSyRNnfJnboGMH88i7L
         P8syezCE2MT0OUyO/xzEyMfSOacPeACnbd8ipe/5bo9hCT3auaohrM810FowRZLY+xny
         urcae+RaK2o/CUVFwVe3ayuFSVRxV5ZxcH3guC8mYX8Ay7mGOqoG5r/zR/As5OMQ+ilU
         tjYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=4vfQyttDdobHbBrio36ZO852PxT9+1cO/BhU8vf48uk=;
        b=1KeMECu8Qz4DBDH0Ricyzn4/KUPJ9/DX82KagLXxZBX0znQhu8Iy3M8mgyaq+EPBQU
         gPI3p4x0IenlQGaEEnVJbuIvjCymDM3+8lETi/FS/xKK/TQGIfYURLNCkkfHWFMbVMIs
         2h4WkRT1n/Se/s91q2gCZ65OKjPUJyNq0a2NmC2tz/opwvggNBR1/EorxEjZfO+SDQjJ
         IPHwL1WPZoG3H6Vfxo1LWDU/6Kkl8s2Y0Q8PKo3JLp2LqfS0nQUZ5Z/d74W1HRd9ShNO
         JagD+JW4sXAXOVp7aPlNdyz8hTghQRpyiaIgO+0b0Y7Yai84PVDZCC2VMSBVvlyo/v6Y
         cVAA==
X-Gm-Message-State: AOAM533yblMg2dOwZg3pPufeh0fGhOcewsZEW/VEFVjvjF3fd4O1tzLa
        GSpZo0ZHlkk0KDQ0aIb18d86Fsxi4V9/p89t8YBjNLnu
X-Google-Smtp-Source: ABdhPJwU5/Q0hxJtri0FNZN0dIfrXIVNiGfo8p72zbI5g6NC0rQ4LcAEpqBq9i1kVsNFIY7Myc0e8HD5T0eBUNqDcSU=
X-Received: by 2002:a05:622a:86:b0:2f1:d59b:32b3 with SMTP id
 o6-20020a05622a008600b002f1d59b32b3mr4592800qtw.72.1650008093391; Fri, 15 Apr
 2022 00:34:53 -0700 (PDT)
MIME-Version: 1.0
Sender: nakodegbe@gmail.com
Received: by 2002:a05:622a:24c:0:0:0:0 with HTTP; Fri, 15 Apr 2022 00:34:52
 -0700 (PDT)
From:   Hannah Johnson <hannahjohnson8856@gmail.com>
Date:   Fri, 15 Apr 2022 07:34:52 +0000
X-Google-Sender-Auth: 6h5iC7KU1RV_WAOhXm9AC5pLTzo
Message-ID: <CANBqjYa-9WFotVN3kr85DnsquKO7Bjz8_tgEViGGxWmWv92m-g@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_20,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
Hello
Nice to meet you
my name is Hannah Johnson i will be glad if we get to know each other
more better and share pictures i am  expecting your reply
thank you
