Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 238ED1BB04
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2019 18:31:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729266AbfEMQbd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 May 2019 12:31:33 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:36541 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728169AbfEMQbc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 May 2019 12:31:32 -0400
Received: by mail-pg1-f196.google.com with SMTP id a3so7040902pgb.3
        for <devicetree@vger.kernel.org>; Mon, 13 May 2019 09:31:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=B032wxaSxEpjK9pKdC74UIRXdzFCuNECesldV5G8LvM=;
        b=kIjXz//gu34JmtpKR/dsJ1vaMB9L/2P9JKdACM4ZnrZf9kttODd7N98HnuFsEVpK3H
         FIdjl/FRyZnbbOTRJRV8suMt4wVHzS4puVd+He2wCyZw86kYaE7PwGgE65mZKz8zpvx8
         m16M2J/uGmFSVw12xYQdC2kH9O9BW+Ork2fQkP8Uz+GIaEyBXYZGvKooGAC274rZvpec
         iGEg2CrUt4GjOXKRlv/7EX/hdlW6bMXdDr7+Uf60Re/nYOrwXNcSUN8C9hxWLypcorIv
         KLxhUBL1CdM8nnMb1BjIQA4ek/gorM7PhHWs4EZxmiltYpeqqS6larlRaZ+Ggg0tqXRS
         cAtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=B032wxaSxEpjK9pKdC74UIRXdzFCuNECesldV5G8LvM=;
        b=H5n3SLPhn23FysjbyUDEYrBy8KqlMsSgAV67RZel8C6GdSlBtGITQmur8f7U/NBI17
         QCiJLiRkPp/oIEueTTIWwz6HokFR4Xj5J/Z45+2gQiWlsHfQ52seGsQUygU450n5jIOI
         jrmnB/HXmP3BuD5mi+42DnCVTCP2x1zIaBKokOkXTzqZza7g85jIzWBFeuIf4SgtPcHt
         2Q9casHfc+POJemv8Kr4bkFMcSZYRU/peUvFGdzIEGg4pAUwGMMYhKXTAM761qQV19uO
         H0bIPeqHJ2NRLI981flfUt2ywYGdZWPbM6lbS+peJigeD0HgcvI5pEkRZysia3j3ui/u
         kb5g==
X-Gm-Message-State: APjAAAUpwf/Mo6qHLhnhezq18wl8L0Y8SjwcxCLpgR3HNUHt/Ln1MtIX
        R1OIJqb1hb0EcOqDpj7kSPFQL8P43Y49kQ==
X-Google-Smtp-Source: APXvYqykyJVcUw9loEPh58IKDLQ8HHbmdX1X7MaIJ18vVl9tQx/WiDfdyA5qBoncQW+XhiG6PHGTUg==
X-Received: by 2002:a63:fd50:: with SMTP id m16mr32686277pgj.192.1557765091630;
        Mon, 13 May 2019 09:31:31 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:fd66:a9bc:7c2c:636a])
        by smtp.googlemail.com with ESMTPSA id x17sm3939633pgh.47.2019.05.13.09.31.30
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 13 May 2019 09:31:30 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Jerome Brunet <jbrunet@baylibre.com>
Cc:     linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 5/5] arm64: dts: meson: sei510: add network support
In-Reply-To: <bf1360ab62a4e7bd3928052ebb6c969e8059f29e.camel@baylibre.com>
References: <20190510164940.13496-1-jbrunet@baylibre.com> <20190510164940.13496-6-jbrunet@baylibre.com> <7ho94ac4jn.fsf@baylibre.com> <bf1360ab62a4e7bd3928052ebb6c969e8059f29e.camel@baylibre.com>
Date:   Mon, 13 May 2019 09:31:30 -0700
Message-ID: <7hftpico4d.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Jerome Brunet <jbrunet@baylibre.com> writes:

> On Fri, 2019-05-10 at 15:45 -0700, Kevin Hilman wrote:
>> Jerome Brunet <jbrunet@baylibre.com> writes:
>> 
>> > Enable the network interface of the SEI510 which use the internal PHY.
>> > 
>> > Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
>> 
>> I tried testing this series on SEI510, but I must still be missing some
>> defconfig options, as the default defconfig doesn't lead to a working
>> interface.
>
> That's weird. AFAICT, the net part has hit Linus's tree.

Ah, that's the key ingredient.  I was testing with a v5.1 baseline (not
linus/master) along with all my queued up changes.  I just pulled in
linus/master to test this series, and indeed, everything works, and I
don't need my config fragment either.

Thanks for clarifying.

If repost needed, feel free to add

Tested-by: Kevin Hilman <khilman@baylibre.com>

Kevin
