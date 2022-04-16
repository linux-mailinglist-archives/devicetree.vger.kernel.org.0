Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 38538503625
	for <lists+devicetree@lfdr.de>; Sat, 16 Apr 2022 13:05:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230388AbiDPLHZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 16 Apr 2022 07:07:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231601AbiDPLHX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 16 Apr 2022 07:07:23 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED900BC8A
        for <devicetree@vger.kernel.org>; Sat, 16 Apr 2022 04:04:50 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id k23so19295487ejd.3
        for <devicetree@vger.kernel.org>; Sat, 16 Apr 2022 04:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:sender:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=32R+RTchebq1QW7hAFVyPOGcWh4H56nMev3Udt5lNQM=;
        b=Ol6jVj8I+ad2LIRvqTq8y/liECQPWi3XI87gbSISlN93hWcNYozq0Ro5O9joVqc2CX
         KJcSuk926YXX7mH79drIcyzOegjolYfZ2zBmiruGb3QgEXBssz9g1byImMdzh2ZabQwe
         OgM0rz3s/QL0X1sdMl41qOQxU3ZRDAgZxOusZZJx6tCzR4WJkajox2eyXZl1tnesSEwy
         +/gBF509u7qKZpnWyqaT1C6TQ4rtXn6Z6Ajp+3YATHjC8MOgI5W17PFZulqhap044IaJ
         25SrMLn2IC+0DyIHQKGuUAX6YrWS3TXAaGwZas47T2p5gKxfVhQEYUdl8aU+q71gNCAG
         zUNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to:content-transfer-encoding;
        bh=32R+RTchebq1QW7hAFVyPOGcWh4H56nMev3Udt5lNQM=;
        b=fiSHHvr4cI9bUyP/WGIRNWAu18YoO5XMoZqPCL58yVzbnRrLGsKtp6RpRF/3yjPMO6
         d4kzyFFKJExRE1ufA/v2hWeFQ282ZdTCoIcow7W9F8wzTEIW08n+S2J1E2iR86Hrv9Ps
         d/ggNsEcprPxVOfKn3GNzDEbpPI0YEhcPC1zs2v9lOIFyou1iglcyxdCcLz9ILH6H2Yn
         Eobnh7ZBVgyXNARqezudhQ3TKVtgBaZB33tOFsxO65nFuIRD4MWg0de0bAUw7ct1I4QX
         CArhvKszr/GAiat1i3L2q4AJpCGRz8kWN5HVA8Yf34ruyFGYk9AUWCuoGT4JD128rDHN
         ifDg==
X-Gm-Message-State: AOAM5330fjYAF6JHBjSkD6c8D90nckhsH+CBvS3ROyUXvB5ul1zutlOK
        L86jrAQO/XK2W1Ng2epXVEFsTvOXTUTkf9d0KJM=
X-Google-Smtp-Source: ABdhPJwUcZRfp/T78X3ARwGf2y/d0fLYy+TWAHhRCdnl0XBSl9hfCTq8b2kwvajnNSClUFTCDmOda8JMccf/dfdaklU=
X-Received: by 2002:a17:907:1608:b0:6ed:de52:7a14 with SMTP id
 hb8-20020a170907160800b006edde527a14mr2406515ejc.395.1650107088919; Sat, 16
 Apr 2022 04:04:48 -0700 (PDT)
MIME-Version: 1.0
Sender: burkinafaso.interpool123456@gmail.com
Received: by 2002:a54:3892:0:0:0:0:0 with HTTP; Sat, 16 Apr 2022 04:04:48
 -0700 (PDT)
From:   Indah <indahfajar545@gmail.com>
Date:   Sat, 16 Apr 2022 06:04:48 -0500
X-Google-Sender-Auth: r1zryOR-9DUp5DZdNXO6pd1y6Cg
Message-ID: <CAFCoA01zzzA+XhaOmOpzV6xJ0FMAyjukFrFM49uSCcLNOWPeGg@mail.gmail.com>
Subject: Hello
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=3.6 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,LOTS_OF_MONEY,MILLION_HUNDRED,MONEY_FRAUD_3,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_MONEY_PERCENT,
        T_SCC_BODY_TEXT_LINE,UNDISC_MONEY autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: ***
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dearest.

It is my pleasure to communicate with you, I know that this message
will be a surprise to you my name is Mrs.Indah Fajar, I am diagnosed
with ovarian cancer which my doctor have confirmed that I have only
some weeks to live so I have decided to handover the sum of
(=E2=82=AC7,500,000.00, Seven Million Five Hundred Thousand Euros)  I decid=
ed
to handover the money in my account to you for help of the orphanage
homes and the needy once.

Please   kindly reply to me as soon as possible to enable me give you
more information but before handing over my details to you please
assure me that you will only take 50%  of the money and share the rest
to the poor orphanage home and the needy once, thank you am waiting to
hear from you.

Thanks
Mrs.Indah Fajar.
