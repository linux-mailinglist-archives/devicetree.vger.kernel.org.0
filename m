Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED45E6B5A76
	for <lists+devicetree@lfdr.de>; Sat, 11 Mar 2023 11:27:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229450AbjCKK1p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 11 Mar 2023 05:27:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229530AbjCKK1n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 11 Mar 2023 05:27:43 -0500
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com [IPv6:2607:f8b0:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36B9C12DDE9
        for <devicetree@vger.kernel.org>; Sat, 11 Mar 2023 02:27:43 -0800 (PST)
Received: by mail-oi1-x231.google.com with SMTP id q15so6142522oiw.11
        for <devicetree@vger.kernel.org>; Sat, 11 Mar 2023 02:27:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678530462;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0ZeK4ZJ1o6tGrUVsDjmi+mms9O6S9hGyBZoeD/hC1EM=;
        b=Ly9yKubIlCyQ9qMHra25G0l6Xy3YUrSrpwIJfnsu8GIz9BBZbXRfEKT0dIhHao/gzL
         Nc59RTCaDCLVaHGSNPkE8kKefiTNZdu43K8kxQMReeglPcBR566bVWyhon0LfOgwattG
         MSjtrCW0N5uK9++hg+r0dMJU5P3GPYoW1xhG8UVeSAJ4Ca4Br/IkhNSGxtQAtBAh8aED
         KBpq7G2y40U9H6ZrhxUNoWiSu1fpmPayXS3QhTvi693KmPxtEnPRpB1DtFsQZu+WyqPI
         aW4N7kSb5NJTpCaK4aeD++xRhudAu0xEkzOiHWscMqwPQvCG8PVp/K0F3yoPuWvM80oz
         ERgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678530462;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0ZeK4ZJ1o6tGrUVsDjmi+mms9O6S9hGyBZoeD/hC1EM=;
        b=t+gG1s4lMWMwcSY7U3vVEJk1rjI7mc0Z4nFHyBRudUmeuyXkWT1TVRQrtmq7tQ7/d8
         F6Ne647nwyzn+vXGUcDv5sysIWrCe0gsJUqwtdmVbQqQ9x26hAJdOktDPHM4tddXjb8j
         h9TseDUXpUou5kzXCHe4jmXUmNMTdTWERSPF98ehjkX1Ch70SqYCsp99gRXavOMeqtBT
         Hh9lpUErWs+ZaTzMu0gmmW9lnq7EmCDhtzC6BKSl2pbPersezfw8+0Lfzw1i2qIKXGz0
         OQ/lH7EwtuhbbYsB1DiYOs8uhdhnLs7/jHrRba9rHeziC+24xS1k5uICZIYsglKy2MUj
         jDWg==
X-Gm-Message-State: AO0yUKWls/vF1M02xLJzfdlxKUs0cPuY6aFjFxYedsMWSI/k1BdFi77s
        KKQZVAfEp6wCM+Yi5K4A2kcJTN2Bgbdbw1mS73o=
X-Google-Smtp-Source: AK7set/slrF7Q4/4SDtrrApkWnv3jE76K1XFyVVYzCX07Y1XTb6xiq+TT/jupTX8jOVJxDISnkhLrszLUa/plInpdV4=
X-Received: by 2002:a05:6808:b2a:b0:37f:a9b3:9ce6 with SMTP id
 t10-20020a0568080b2a00b0037fa9b39ce6mr8775242oij.4.1678530462583; Sat, 11 Mar
 2023 02:27:42 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6359:2101:b0:104:5af0:9d21 with HTTP; Sat, 11 Mar 2023
 02:27:42 -0800 (PST)
Reply-To: fiona.hill.2023@outlook.com
From:   Fion Hill <youngm8819@gmail.com>
Date:   Sat, 11 Mar 2023 02:27:42 -0800
Message-ID: <CAKE2LTbr29y6Jr1J-PvQEvz4OT5JEU3WVe=MDS+EKEvEG2mvyg@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.0 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:231 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5746]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [youngm8819[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [youngm8819[at]gmail.com]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [fiona.hill.2023[at]outlook.com]
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  2.9 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
Hello friend did you receive my message i send to you? please get back to me
