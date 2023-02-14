Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E6522696E0D
	for <lists+devicetree@lfdr.de>; Tue, 14 Feb 2023 20:42:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232224AbjBNTmx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Feb 2023 14:42:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231481AbjBNTmw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Feb 2023 14:42:52 -0500
Received: from mail-ua1-x929.google.com (mail-ua1-x929.google.com [IPv6:2607:f8b0:4864:20::929])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B807E30D9
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 11:42:50 -0800 (PST)
Received: by mail-ua1-x929.google.com with SMTP id bx25so1659721uab.9
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 11:42:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=eventmediamaster-com.20210112.gappssmtp.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Q0DkxdLdI4RMUIu0YupmzzIhqZo27tHphGhsHEj0Po8=;
        b=pnVFoanBFVTmBvoqm6++wCS5ORlWrsjWIqJdrYYqy6v+E8W3WpZ1ZUeSaa6upRoBui
         8LN7On18RFPvuPSdHcRAp6XvRT6a3e9JEvvypMMtMEiMKt7wu3yZuTAxP8zOpOSAwRB6
         9NbB6DpD0tyMSvZB05q3f7klv5+c3P3L2LJU5w1Soc6W/YSZaRL9R90BKmD2EjWOYyu6
         OTMW8MSqrqq0fxCJuLZ0KJSF80leOmJCyoPTWI973rGZZUZcqjcYSmcdT4YE7ihVjuhM
         7n0/78eVFmabfDaIw893PFgOZEfWApVviIh9qKga+//Km78ObWiVAls/Sowbs5IVspMR
         Ka8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Q0DkxdLdI4RMUIu0YupmzzIhqZo27tHphGhsHEj0Po8=;
        b=XBWUKCNRNG0GHSFhvPWQqp2+1+vRutzCp/w5RUyTGjZGxNA7VQvzPH6W5/FRtGC0uG
         xa/MwX++IEb8bVMMOVKFdX2U/NeSjAPbK8FzVD+VzhrBbEmdJ4QYJ8KkiLPTpmVT39m6
         emmP8uLtMYPpEk/cf7u+I1OrGAEWIMXdy186dBHNImzpDyGU7Wjqi9KM6ShdJC0GwaUs
         xajxPnibPi1cC8biM2sbOvR7ndsxrjOMxsACdSZB+t9gKVp4SeN5hq4lppsoGHpQMmC+
         de41VXvoAatvAr1A1rbgCU+tmTgWMQt/lZRpYfWlSb50L/q+gX9psfgTOk3VAOzPRo7x
         VKqQ==
X-Gm-Message-State: AO0yUKVldTMd2rClTcDo4gIpMPeaj5NobPp8jZvf6W1k/MCzFjIlOk/7
        ul7ppW3q9x+xbcd7r1bwtt+16m1QAndlwfdI4tVaPA==
X-Google-Smtp-Source: AK7set89pGLVQBSHqQkzCu9kJMtkzBKjaDx6DBfxYZ2VLFtXdv3pE3tYwPjWaLTmyD0uTp5sYCvpB+TJ2eQcI7ELJRo=
X-Received: by 2002:ab0:7e5a:0:b0:68a:6709:7953 with SMTP id
 e26-20020ab07e5a000000b0068a67097953mr478320uax.69.1676403769844; Tue, 14 Feb
 2023 11:42:49 -0800 (PST)
MIME-Version: 1.0
From:   Susan Miller <susan@eventmediamaster.com>
Date:   Tue, 14 Feb 2023 13:42:37 -0600
Message-ID: <CABFg0EbjAr75Kv2yqr3FbRQJmSV8SBYkb5TT+mPqKOiQamMnaw@mail.gmail.com>
Subject: RE: ISC West- Security Industry Association- 2023
To:     Susan Miller <susan@eventmediamaster.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=2.8 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,FILL_THIS_FORM,FILL_THIS_FORM_LONG,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

I hope you're doing great and staying healthy!

Would you be interested in acquiring ISC West- Security Industry
Association Attendees Data List 2023?

List contains: Company Name, Contact Name, First Name, Middle Name,
Last Name, Title, Address, Street, City, Zip code, State, Country,
Telephone, Email address and more,

No of Contacts: - 35,767
Cost: $ 1,726

Interested? Email me back; I would love to provide more information on the list.

Kind Regards,
Susan Miller
Marketing Coordinator
