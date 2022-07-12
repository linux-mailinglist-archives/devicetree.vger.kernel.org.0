Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7DC80572170
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 18:55:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231567AbiGLQzN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 12:55:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229781AbiGLQzM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 12:55:12 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5F21B96B9
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 09:55:11 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id sz17so15386359ejc.9
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 09:55:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=kTnWqPCQ7JZ842fbaIQWezAeKboDsupaMXi3CH+q7qQ=;
        b=fG7ZQgeA8PW1gQxUWY32jKaDt6aVgcYhI7StQhlKp+wnf7d11MY49bGGQH6MhhSPHg
         q7T3gmFczaqUNACdt3mFj7d1OuBcJMe0YMmBOQ6Rp/zycAxw9AJX1l/tIUIfLBhjIIPF
         7Ggo3elS3OQI2wHrZ+6f4P4Kh3uQvcapm3iVq5tmho4ZaT7wjFtQJKTbNnnJJ5vSX4W+
         2HGKgzIPkaoCvQ3hpKRqWrml7jaoYZdjSQwTmetCZSzOYmZWkTEjeP8hyTQSt4VDyimv
         mOBwhRJQ0yOedEq4dmSC8sUtGoiyjzmDFEFsngkMtjoMrXx58mJL3MQqJqRscjKRXU6D
         cFiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=kTnWqPCQ7JZ842fbaIQWezAeKboDsupaMXi3CH+q7qQ=;
        b=NRXu3QkF8+woMe8uRtsYZhaOcS/mcvAu3OqelnTDW8xffTNtyD2GjABXLqnI7afyGs
         L5XR98Np/SAHs3xHAR/we+OKZ4hbPga+lHpvMkffepUjchw04GTFAKWTTJaF8B+gD68K
         AF2L/7nF2mw0Qvmrlf1GZG83I4Z+tq8m0QHkx4mryGoCNhBx3OJxGQoivzXh+AW8gLA1
         7/nhIk+i5aqPNcNG/aI06vlfi7EPbVpz3OZH9XW3XXfraxCirQ/AZboC3oxbjNsEf2vO
         /0XReGPFnlptabtq6cd7s/rPH5WRlwF+QQn3N3CGRM7E+9gy80Fu/8rZDIgR1iRHqs9h
         czbg==
X-Gm-Message-State: AJIora/f5GhCr4zyPhCFjBXoA5o/f0fZRxIBr5mc0C70QRutYV7G3+eM
        oLErVaT6Jd/C5zQj7w5wAkOG3V9zoOSeNenjZMs=
X-Google-Smtp-Source: AGRyM1tmSMFyBA9kJyhmEBEysUyJ51OqbvMNDwknmPpzylPvI/xl2VPC+YcWJXhMTo/1Xg6nZyTk32nQk4Amp+eArrE=
X-Received: by 2002:a17:906:5a49:b0:72b:1432:25fc with SMTP id
 my9-20020a1709065a4900b0072b143225fcmr25263967ejc.405.1657644910214; Tue, 12
 Jul 2022 09:55:10 -0700 (PDT)
MIME-Version: 1.0
Sender: job.adpc@gmail.com
Received: by 2002:a17:907:a049:b0:72b:22ba:7d24 with HTTP; Tue, 12 Jul 2022
 09:55:09 -0700 (PDT)
From:   Al muharraq group <al.muharraqgrp@gmail.com>
Date:   Tue, 12 Jul 2022 17:55:09 +0100
X-Google-Sender-Auth: I63luSHElUK2HF1wxDqSZP00puA
Message-ID: <CAM-x3EJphDmVzeFvo_cSe9BoB0ooq4uzbx7czsk4Ejsi-6ejzw@mail.gmail.com>
Subject: Al-Muharraq Project funding
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=0.6 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
Greetings from Al-Muharraq Group Ltd.

I have contacted you to consult you for a funding resolution for your business.

My Name is Saif Yusuf. Do you have projects that require funding? We
facilitate the funding needs of private project owners around the
world covering infrastructure, housing, real estate development, IT
parks, industrial parks, film studios, food parks, agricultural
projects, health & wellness, hospitality, education, electronics &
telecommunication, power & electricity and oil and gas sectors.

If you have any queries regarding funding please revert back to me and
find the solution to your financial needs.


Sincerely,


Saif Yusuf
Business Consultant

Al-MUHARRAQ Group.
#sblcproviders #bankguarantee #mortgageloans #unsecuredloan
#projectfinance #startuploan #tradefund
