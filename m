Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8724B78764
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2019 10:31:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727578AbfG2Ib2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Jul 2019 04:31:28 -0400
Received: from mail-io1-f42.google.com ([209.85.166.42]:39625 "EHLO
        mail-io1-f42.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726810AbfG2Ib2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Jul 2019 04:31:28 -0400
Received: by mail-io1-f42.google.com with SMTP id f4so118191359ioh.6
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2019 01:31:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=bdzuJeOyWibPEcj1ubJKJY7xfMqFPuK/5jqKR1OSEeg=;
        b=H3z2x0kwuxo8+J/MdmaWObAyDR4M9mzZh2drvY5HUZ0pcfktZ4CVx327I4+RgY/AYw
         F0t6tMJ38XcVy/dhTYf2DnZnOXZ2p8iOhWT741INnfzOAHdaeZkvm/mQMXIzNGHeKjrX
         rq/PZDiEBdhZ2yIsYeIPdcatfjsmp9TAtE6euXZRKulG7YlBwqgBIUHTEaYo3rGMG+xn
         L7fF8jM6J0tfBvIEED+9YBEomvBtdCQQ32sVgOcwH4G5MrpN56qzB63j75Kh+8ZZsdI8
         ybnfkOlWjdp7Tdo4M1dbWi2IjBWpR8dfJYyCriygV+s3ZYDWgqOODiR7EsIy4DVB2WUC
         CrcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=bdzuJeOyWibPEcj1ubJKJY7xfMqFPuK/5jqKR1OSEeg=;
        b=ho9zjCeS2O02wDlxWu6XyAagZrb9X6iJ5C/F5qbOoC0X68RAv6A6NZFIx0c1gnzPc4
         /rIIHFdi+9sEil2BXMG2i+OpTdxWD5+waNyah4IL/21L2uf2Wqb0VSPVnWzyEdCMkeKn
         tiNFtFAFyAeKyeriLlRXFnmALFCFox6mQKFQ8LMqZ74co8dHK9CZcDIY7GQJ8HY56JZF
         Umn6AIhXfPC1uImghc/KCXbRG0ytnWbHDrOucjpy67nhB3FVzF0FDMc1ecYIOYPzBTmU
         JP4rV48nTcuxjGRNIonxmqxTSSR9I7eQ/faYpzMgaRbqtKoS7i19HudyFWya76mp2Bnq
         HuOg==
X-Gm-Message-State: APjAAAVqjegbqGFoUnRdwudsK5R3cK8OhON0I9zuvtl4TNxecHjvLnua
        LhHLkwYvmXQ/Ug7KRHj4ojbHFlJndlNurZSVmRv2cQ==
X-Google-Smtp-Source: APXvYqz9yjTu+38lr7TLtqQlpFR0aqpEzKjRWNTyj0+FE+vtdh1bS4qotZ4H68KRs9l/W6o0hMu4a/iJPimSWipAAGI=
X-Received: by 2002:a02:cc6c:: with SMTP id j12mr67702185jaq.102.1564389087646;
 Mon, 29 Jul 2019 01:31:27 -0700 (PDT)
MIME-Version: 1.0
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Mon, 29 Jul 2019 10:31:17 +0200
Message-ID: <CAMRc=Mc_9=3xYWrrn=naQgFprgLA4wkNJQE1niSiYiACi5XFiw@mail.gmail.com>
Subject: DT yaml bindings: handling of complicated compatible property
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     devicetree <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

I decided to attempt to convert the DT binding for AT24 EEPROM driver
to yaml and am not sure on how to handle the compatible property with
a lot of options.

In at24 we support 23 models and 8 vendors (184 vendor,model
combinations) plus 5 exceptions (with model names not following the
general convention).

Do I simply use the oneOf specifier and list all possible options? Or
is there a better approach.

Best regards,
Bartosz Golaszewski
