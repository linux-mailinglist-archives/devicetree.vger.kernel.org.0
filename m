Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 22DD747CFC
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2019 10:29:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727502AbfFQI3F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jun 2019 04:29:05 -0400
Received: from mail-io1-f68.google.com ([209.85.166.68]:40792 "EHLO
        mail-io1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727039AbfFQI3F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jun 2019 04:29:05 -0400
Received: by mail-io1-f68.google.com with SMTP id n5so19293295ioc.7
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2019 01:29:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=ez/ZoP3qqsTxQJb37WU8HYsKtSVx9HDxzSMcfhV5L2w=;
        b=qq913kl/pyj02xNjg+HhJuVrJahlyr1ajJbCTDi3SKJcuwNv8hQHj03bhg4v5fcFSc
         +MZGE6h010NWLVn0QVZbMJtaOivvn0Pvz6/mT1f2/Wgbmp9xrHeyGFxUdAhj1Ucdm77H
         N9bBqf4FM8mQF/i4RKl7nZvV7bhIRiOwHbBxwTbxdfQhjQA1Fgwykg3qchY1e49U1pmo
         ATncGg8axmo7PfhjcNs+4mn09kPaaoIFZoQbeGHdocwsa7yKFDrPcaCbjCXDi2fAOkHz
         y4Eu7+arBp6HJQ6lKFzPjnyC9oOutOBZvK/gJOEybUis6NGf5o+admYWTi6KbGwNsyls
         PBwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=ez/ZoP3qqsTxQJb37WU8HYsKtSVx9HDxzSMcfhV5L2w=;
        b=oLrtq0ieC5w5GFM3T8dsgk4WpZqJC4AZgc+IM24V1IUNYk7qFZN9brIvI96NyyXISI
         /gvw7pzjXF40Sqfm8+R+bOetE8OyFqL3RjdBuO2YcTrlIAQ22gnwZ6Cypp0wJPPHjHdC
         PbLvLuioRZaUTb3x6Mgx5q4nL/o1dSqLPSGpYyB/O1BLffml4yOLuEjB/svN/UIrWIDF
         PzkSY6DPC+v85Xxjx+vQrL6WC3Jap71xM74/JDs3SoVdCOotlNmfALFFau6FqDtl1aPo
         oAKVbp0JFq2j3g5JrWSqc4iACwzoX2VBKjbE0R41JuktUlm0d1y/RVG3ul3OkZ5s+jG3
         3oNg==
X-Gm-Message-State: APjAAAUhldDaIIRecSMlSCMDfGF3kxtLBK04z2DU23DMxvH7GMDIJiwF
        TJ2enUTRwbuLAxOoYJG7/XUmAgWwB0CJnrHGXd8=
X-Google-Smtp-Source: APXvYqy92RtdXe/ht/VRYEttPo3FDPmKsDVma7OLIOGb9ThidNP/7hH3ZlnqzV8ISSLtzLKNYrIbwBshNsKeqlXCoyI=
X-Received: by 2002:a6b:790a:: with SMTP id i10mr50430916iop.150.1560760144071;
 Mon, 17 Jun 2019 01:29:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190606132439.25182-1-krzysztof.michonski@digitalstrom.com>
 <CAFBinCDKPTBwhG-PGFoz25iDq5-DfMT3y3b=k1VJ7MFPnwezFA@mail.gmail.com> <3421cf72-62ce-cf24-4163-8896660b7b5c@baylibre.com>
In-Reply-To: <3421cf72-62ce-cf24-4163-8896660b7b5c@baylibre.com>
From:   =?UTF-8?Q?Krzysztof_Micho=C5=84ski?= <michonskikrzysztof@gmail.com>
Date:   Mon, 17 Jun 2019 10:28:53 +0200
Message-ID: <CAOiNxGBs03Z9O0FV7RZ1KumZx48djNb21=Zhk-e9N4GHJ4z0uw@mail.gmail.com>
Subject: Re: [PATCH 1/2] meson_sm: Extend meson_sm driver to be compatible
 with gxl chip
To:     Neil Armstrong <narmstrong@baylibre.com>
Cc:     Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        khilman@baylibre.com, devicetree@vger.kernel.org,
        afenkart@gmail.com, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,
a word of explanation from me. The reason why I thought the addresses
differ is I've had wrong understanding of the shared storage and
shared memory. Due to a problem we've faced we were made to read from
the secure storage and as you can see the secure monitor driver after
altering the shmem_in/out addresses can be used map shared storage.
This patches then are incorrect.

Krzysztof Micho=C5=84ski
