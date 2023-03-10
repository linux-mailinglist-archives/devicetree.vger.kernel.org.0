Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA0906B536D
	for <lists+devicetree@lfdr.de>; Fri, 10 Mar 2023 22:52:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232105AbjCJVwS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Mar 2023 16:52:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232106AbjCJVv7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Mar 2023 16:51:59 -0500
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com [IPv6:2a00:1450:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7608FAD4C
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 13:48:37 -0800 (PST)
Received: by mail-lf1-x143.google.com with SMTP id j11so8416872lfg.13
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 13:48:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fortunewebnetworks-com.20210112.gappssmtp.com; s=20210112; t=1678484853;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=vu/hIGIFa5lHxMmIWQefka7phZ4BQsyUQ7lfzUv1x3s=;
        b=RsO0ulJ/pUDx3MzTkDqzMbd4KD6Pd9oT7slilB+Lnf+x4+0wLMJ2P/aEW0JAYWbQBw
         qMQVblKYh9rYESyijXGzoK6h0jWm5+VQ3eGkxC+/l67L71ZCI63YRYODgwI3JDtNGzTI
         7N3xVfGQkt+2F1Hiuj/RyvhJZVO4PUdPMA/3uKyS9iM7RLcnUGLnOqpVNwJ6Z4O3emHr
         iHr3SSVD7tId0ox+pk2nHI2fa2xSKtMes8hSJsB7KcimMURkCeHijazsjytc1RiC6Mfe
         Y3g052M27ZtJO2wRJbDGP8FV6kNoq/4xOABXWmy4+jOgTBqXf3ZT+kQ4/a9LimtDNYKj
         fdhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678484853;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vu/hIGIFa5lHxMmIWQefka7phZ4BQsyUQ7lfzUv1x3s=;
        b=XGCmT6P2ms8suBq0nZWh4nyAI+MlSi6eY+rDo9gT25HY6bPNQ1XZ3Gs0eCEfXYbNVX
         fNVpGbHwVZomdOcv+IwMwUPwTMQ4MJLDVFllAV5ua11rKr4tyU8pSWnXcZ0STzoPQ9PS
         7qvZEyyQZ8sSUcvqQkPWhqP7Zb/BgRUkxbQaHFYhL3WUhZgKrtKlm/FpOTpCPK7JFPzy
         6xSK8xwmnnAndMAEu+10UhxLftxC3FyGQVCmlRVVWdDCJvzwz0E4m9iiWpBUMQRZuwDc
         q0JLWlXcdZY6V5tf+w4fzs9Jhz3062mD2OKai7a2vEt3kEAkjUL2nSj7LFtcGtO5SFSM
         mZ2A==
X-Gm-Message-State: AO0yUKWkdLiiiosOwjrYIcMlo257sezq1qZJS435KiMOIc+Xl0E/EV4d
        JyGryI+REcw6+Ch21we+zcSS30LOE5anm5KDQcbTeg==
X-Google-Smtp-Source: AK7set80ng/ihx6fLZLuyKYLzHgMbS+wt3RCh4iAVg9BBSmsqrVSQ1FgqyPl4yDcy5HgUnHOa5J/v/YuGwF7kW5pD2c=
X-Received: by 2002:ac2:4911:0:b0:4d5:ca32:6ae0 with SMTP id
 n17-20020ac24911000000b004d5ca326ae0mr8086450lfi.0.1678484853659; Fri, 10 Mar
 2023 13:47:33 -0800 (PST)
MIME-Version: 1.0
From:   Jack Lee <jack@fortunewebnetworks.com>
Date:   Fri, 10 Mar 2023 15:47:21 -0600
Message-ID: <CABNDBtB0zATR7JioLHJyQzusKrrKjQ1XbLLECwiFLUVa52YMTA@mail.gmail.com>
Subject: RE: HIMSS Attendees Email List-2023
To:     Jack Lee <jack@fortunewebnetworks.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=0.8 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_FILL_THIS_FORM_SHORT autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Would you be interested in acquiring The Healthcare Information and
Management Systems Society Attendees Data List 2023?

You'll get access to 43,386 opt-in contacts, including their
organization name, first and last name, contact job title, verified
email address, website URL, mailing address, phone number, fax number,
industry, and much more.

No of Contacts:- 43,523
Cost: $2,289

Contact us today to purchase The Healthcare Information and Management
Systems Society Attendees Data List or for more information.

Best regards,
Jack Lee
