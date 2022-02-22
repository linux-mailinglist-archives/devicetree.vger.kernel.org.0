Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 099284BF75A
	for <lists+devicetree@lfdr.de>; Tue, 22 Feb 2022 12:40:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231743AbiBVLkY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Feb 2022 06:40:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231737AbiBVLkX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Feb 2022 06:40:23 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5733A137752
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 03:39:58 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id k1so32615374wrd.8
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 03:39:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:from:mime-version:content-transfer-encoding
         :content-description:subject:to:date:reply-to;
        bh=zncUP4k0qWTkrruw/2Qwtl328+sz3ixjRaMsIKFNcuk=;
        b=ev/X+VLqFgdHLzEbG+HiNy2++X4XSN25RLgjcfm0CzJVYYqGeylJN5IU2i4K0gH1hn
         +8AGoeumAVMCl9g3N/19Lqy+u6ruMx4zhIPA2BQiMuPoUSPL8aiYAg6gmULhqlJQ8DB8
         xxV7GkkSpA1DGq2mXWaE1q4WjHwZ43RnW2YeyYs+nWMZsnQn5Gy8MO89DQQpIR99gCvi
         KerslBcf97L+VPb8q90ECSIGKpWOuSYtIYpiaWpmFW4QoJNV8giCzg2MmLLSz+scXIpy
         2S37VxFahY/5C1inqKYn+E57mMlcSXcTi760s+d9EdQtaj0Eg7eilf2Oa2TvxgxA7CK9
         rL4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:from:mime-version
         :content-transfer-encoding:content-description:subject:to:date
         :reply-to;
        bh=zncUP4k0qWTkrruw/2Qwtl328+sz3ixjRaMsIKFNcuk=;
        b=6UqOEzLwqTB+PiqA5zYotDGvHT3DPcn7en9a075TFQwwytSn0VR3bi5+zzjyZkShlN
         073+2gJT7slqFh5QcuJn25wVklFV6ItQlwQ0ZsFYUyEpz6WxOJKJnjzRlZkZ+HV0X77O
         OdIVnAEvunMxAXOUkLU/PTrjeHFHASUuHstTHPOYWzsbqKwUiD3YHPoPrJWmWkYPN6yU
         pXOWygwwMDdQDirTLIkc0N1xok3mG58JzjTluuIRHwFbl1UOOASVWDhxcFo+5f8pUUju
         q6mWwtsLDRIMHzSLBjk9u75LmqczLw9T7JfC/K87IyyGhTYGOJ6sBCFaLnNv/mJXp2Aj
         u7TA==
X-Gm-Message-State: AOAM533/l7DigbLh2Q7Gs2qBxepKvHugNKoNWDsqJzR85uE+agnq7O6Z
        bC1Ncnu/KGeXcmRRKhv/vpD9rBAUoE8=
X-Google-Smtp-Source: ABdhPJxyctue8CHBoNEwEPVhSI/FPtI3eS/4+UQL+VLFnEgEcTcwfw8TU66uOtr+rb/rQV5X4dijag==
X-Received: by 2002:a5d:47a1:0:b0:1e3:814:472d with SMTP id 1-20020a5d47a1000000b001e30814472dmr18854443wrb.395.1645529996751;
        Tue, 22 Feb 2022 03:39:56 -0800 (PST)
Received: from MACBOOKPROF612.localdomain ([102.165.192.234])
        by smtp.gmail.com with ESMTPSA id b11sm30544902wrd.31.2022.02.22.03.39.46
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 22 Feb 2022 03:39:51 -0800 (PST)
Message-ID: <6214cb87.1c69fb81.cc40b.b15f@mx.google.com>
From:   Scott Godfrey <markmillercom322@gmail.com>
X-Google-Original-From: Scott Godfrey
Content-Type: text/plain; charset="iso-8859-1"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Description: Mail message body
Subject: CONGRATULATION!!!!
To:     Recipients <Scott@vger.kernel.org>
Date:   Tue, 22 Feb 2022 13:39:44 +0200
Reply-To: scottgodfrey.net@gmail.com
X-Antivirus: AVG (VPS 220222-0, 2/22/2022), Outbound message
X-Antivirus-Status: Clean
X-Spam-Status: No, score=4.6 required=5.0 tests=ADVANCE_FEE_2_NEW_MONEY,
        BAYES_50,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        LOTS_OF_MONEY,MONEY_FRAUD_3,MONEY_FREEMAIL_REPTO,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,TO_MALFORMED,T_SCC_BODY_TEXT_LINE,
        XFER_LOTSA_MONEY autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

My Name is Scott Godfrey. I wish to inform you that The sum of $2,500,000(M=
illion)has been donated to you.I
won a fortune of $699.8 Million in the Million Dollars Power-Ball Jackpot L=
ottery,2021.And I am
donating part of it to five lucky people and five Charity
organization. Your email came out victorious. Please contact via email: sco=
ttgodfrey.net@gmail.com. For more information about your claims. Thanks.


-- 
This email has been checked for viruses by AVG.
https://www.avg.com

