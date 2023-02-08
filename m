Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D4ADF68E8BB
	for <lists+devicetree@lfdr.de>; Wed,  8 Feb 2023 08:12:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230075AbjBHHMD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Feb 2023 02:12:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbjBHHMC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Feb 2023 02:12:02 -0500
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com [IPv6:2607:f8b0:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0598227AB
        for <devicetree@vger.kernel.org>; Tue,  7 Feb 2023 23:11:58 -0800 (PST)
Received: by mail-oi1-x243.google.com with SMTP id bx13so14716136oib.13
        for <devicetree@vger.kernel.org>; Tue, 07 Feb 2023 23:11:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:sender:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MmYj+CB2YxZipjgrDEGrb8ZnVv0SQ/HUrSGEL3siE4M=;
        b=e0m/dkVWvK4/WjFu5xg2U0k2v/GGF0Cl68in7HEd6+Jz4ksJQZPvvKezIV+mvWkLD0
         rvBtr9xIGB7dUPz4ZEeXMn1tDoCREzz2Q5MKi5HGCYUoNUKSeMbQFRTPuPvm0+7X5uif
         mCX+UysMTRfPWfQFUcDZs9DWhIMnmu6XK52rE6JwgLnDxZI3znyq5CiyosktjTtEO0pm
         cOIu5CvonT/G2OwYucQNZPkDAWdxrgQkd9iOkNl31BZBNHfXRiBBf+LMk3yZX2jy3ign
         TPttO9Vwoo2BR+fxXiX8gNwxUu/NGn4qAzzLmrbWoZuCutb61H0cBF88kyxMhKBeK5hb
         Eutg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:sender:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MmYj+CB2YxZipjgrDEGrb8ZnVv0SQ/HUrSGEL3siE4M=;
        b=s6avM5G1irr7R0mNL6qcaSktTAVLkUh20EYLe9myS/8mVUy3/UW1g20IRFghQSPchF
         cxg39WBoEvZRicTKFTq2f/auanqbCHhMOcbNw4qjSA8CLaFH+IHOuq5SmF88JRpAxVdu
         cSxvRLg/3E3JvoloTRaiXikIi6r2/fL8fUFi+P9uFzciQYFUYrd5mQT315Q9rVUL4dVK
         3Rzg71QcORPAE6kHUrIX68soRqA6rqHYez7oLoLELFhtoaSdJ5oZHDiz10rREWc6lhbO
         XEbJLExFNpUSPKCERXfOjhz/HPkxkPJENKEzYPM9tMgwmGtMHQo8pFXfnlqsb3gKzX88
         ETsg==
X-Gm-Message-State: AO0yUKVA/r6vJm/ML1RA8DWg+qwj+aH9IOLzl7zdmLO4tsbWSF+6ChPa
        G8XJ/TF17j7EUoAyx1UogL90o3fJq7XASPYLkY8=
X-Google-Smtp-Source: AK7set+NLnNyPEHkqxsravCxuS1aNb3b63DMXGWkiWF8l4HC706h1qEURQqHGlm1uTMUi3it6HEdkffVRCF1KyU4Fgk=
X-Received: by 2002:aca:5f06:0:b0:37a:b856:d35a with SMTP id
 t6-20020aca5f06000000b0037ab856d35amr129340oib.22.1675840317566; Tue, 07 Feb
 2023 23:11:57 -0800 (PST)
MIME-Version: 1.0
Sender: nicolemarois101@gmail.com
Received: by 2002:a05:6358:7291:b0:ef:d569:610c with HTTP; Tue, 7 Feb 2023
 23:11:56 -0800 (PST)
From:   AVA SMITH <avasmith1181@gmail.com>
Date:   Wed, 8 Feb 2023 07:11:56 +0000
X-Google-Sender-Auth: aX4H_cmkmJEOYwXbVY0of0lcQOI
Message-ID: <CAKZDbpzxn11r=qeWsAz6WuFZQHip59iBDk-VuwU-23BdA+POXQ@mail.gmail.com>
Subject: Hello Dear
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=0.9 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Dear
My name is Dr Ava Smith,a medical doctor from United States.I have
Dual citizenship which is English and French.I will share pictures and
more details about me as soon as i get a response from you.

Thanks
Ava
