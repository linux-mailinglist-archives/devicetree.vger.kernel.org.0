Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DD2921A853
	for <lists+devicetree@lfdr.de>; Sat, 11 May 2019 17:52:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728658AbfEKPwz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 11 May 2019 11:52:55 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:37056 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728618AbfEKPwz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 11 May 2019 11:52:55 -0400
Received: by mail-wm1-f65.google.com with SMTP id 7so4001660wmo.2
        for <devicetree@vger.kernel.org>; Sat, 11 May 2019 08:52:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=wPE7oz9+/ykS8zKoedHqVltx9asTMcwNqU/NkoJcdcY=;
        b=s0FzKNSdOBwo0GMStdjIpty4uA5mj8FO72cIPIiYgPgYd35EBRX9ZiG8D0YFnvU2+t
         VYwKiZ1P/isFku880QbFIILYQg3OhxyqzDJdkmfWwJRUDidN4S9lzNq8KB4rICYtC4I4
         S2Q3K/YunQWelvK80PpWUzRAXPoJpO4nn7wFr8BYPQXuIHi469BOXYyjSuWJZxRTPHx3
         eNagyGJCnyOkUKPvtBSHVXNACZg4o05CBhoNRxq9gh+4Ql99zjGV222YVyfVJ+9dRgoD
         cWuf4cdIxX9M/3BZ0fbVsS1I4pmOVkmVl8j66d12AogWNnCpJjJFiU3K1pNRYATgECZX
         Ll7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=wPE7oz9+/ykS8zKoedHqVltx9asTMcwNqU/NkoJcdcY=;
        b=j8ak0jgz7XDfhixuum0l53TL81yCnr6CICr8Rta8vSnTCUGO0uSg3GXvetYujHcW/J
         Aisa7pbuq5zXNb/QMOYdNHey5jz0caaYdZUh5igOkAipTNn3HtybOs+5yeShVF3Mk/1t
         ItdMCOdQgG38lNaPuECWi2ic/Fq5Qz3HcxdcZjkdeOCuJT68H+sZfDs78UqBvM2K/d2z
         uSUdlG54vWd1nyA/Lq3xh6CoilrUvBoBSRBPrStzWj+hZ9Lxz8FUWIv7M2cL+MO0J3/o
         MFeD22IFac1QWxhESBCk5ezf1UhcYiV1e+PyWjQ7mXZWl/QFGHjO7HgLI3yQ7Q7cJFdI
         OIOA==
X-Gm-Message-State: APjAAAXE5VNfNrZVMLFXkuBiyMyxu7YmGXwfVeHA8XzFTQWfoqah6VS0
        K0XzSTMTc1LSGzZ5NTGNtEx3lg==
X-Google-Smtp-Source: APXvYqxNW8CXjnTFV/v4WjIAb7jakTDUy3oFkP7JkALz95R+UIhsGTf/3/M7lS479C8OkF5mMMCpsg==
X-Received: by 2002:a1c:a013:: with SMTP id j19mr6207172wme.59.1557589973884;
        Sat, 11 May 2019 08:52:53 -0700 (PDT)
Received: from boomer.baylibre.com (cag06-3-82-243-161-21.fbx.proxad.net. [82.243.161.21])
        by smtp.gmail.com with ESMTPSA id m17sm7174332wmc.6.2019.05.11.08.52.52
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sat, 11 May 2019 08:52:53 -0700 (PDT)
Message-ID: <3bad9dc8c53e50c4aea1212bf949215660259412.camel@baylibre.com>
Subject: Re: [PATCH 1/2] arm64: dts: meson: sei510: consistently order nodes
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Date:   Sat, 11 May 2019 17:52:50 +0200
In-Reply-To: <7h4l62dlyh.fsf@baylibre.com>
References: <20190510155327.5759-1-jbrunet@baylibre.com>
         <20190510155327.5759-2-jbrunet@baylibre.com> <7h4l62dlyh.fsf@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 2019-05-10 at 14:43 -0700, Kevin Hilman wrote:
> minor nit: I kind of like "aliases" and "chosen" at the top since they
> are kind of special nodes, but honestly, I can't think of a really good
> reason other than personal preference, so keeping things sorted as
> you've done here is probably better.
> 

You thought the same, then thought maybe memory was important too. But going
down that path, you end up sorting by feeling. It is going to be difficult
to all agree on which nodes are special.

In the end, we just want/need something that is easy to respect and verify.

> Kevin


