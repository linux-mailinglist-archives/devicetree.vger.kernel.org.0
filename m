Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5FDD567919
	for <lists+devicetree@lfdr.de>; Sat, 13 Jul 2019 09:57:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726393AbfGMH5W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 Jul 2019 03:57:22 -0400
Received: from mail-io1-f67.google.com ([209.85.166.67]:33790 "EHLO
        mail-io1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726301AbfGMH5W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 Jul 2019 03:57:22 -0400
Received: by mail-io1-f67.google.com with SMTP id z3so25479312iog.0
        for <devicetree@vger.kernel.org>; Sat, 13 Jul 2019 00:57:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:cc;
        bh=YX+vc5IdaHQhuYULgHYSUJ8MAyF6VZOjha5lph1NGNE=;
        b=SIVFzUDMtb/L9XjeRDbCK1w3oRXvja4st73MYBAwrTKdqD0xz88d61mT4ZQYeI0/xb
         TqvEUMfSC1BRztBJYggIQR+CtPlvzjPg7YW1LLu4bAR7Cun147fEQnwzNbdXc3QVUjlb
         aLcKqItDuLSsDvum8fIqezMop7uKUTbexre0f9RY9+WCAmpO7okCX7LGhMTodwRr9SEs
         8IgOGkorOsRHrP94ll26vmWDNPlLVrUJGIpx8vo+f/JSEGp2/Ml01n1Lv95iZ0w75u+v
         aJdCjbhoMdDppiWRk3g2+KgnFw1nDtXhHz3xqJELMTxvdyy52nDIOctW33xs4Cmf8QzG
         N6oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:cc;
        bh=YX+vc5IdaHQhuYULgHYSUJ8MAyF6VZOjha5lph1NGNE=;
        b=lH71Lk5tOZ3+kPvIFVhn7wvjP6LSt5cTtuTHm0yWAw9NhvkY7DdfKgO4SdoDlv2xFc
         o2bZ613ZTsfunnDpy0e42KG792VwzJ7dF2QxRMiqxI83Njm8hmsGQVgFq8T58mQBCP3P
         a4gu7xbfrTRa3FnwzVJ9H09+zLRlS+FKHIlcGBMv/gq+31HJzgcswCwV9p7IgUwokitK
         WNICjgkWIM+7OtmygPSaKhiFHlh5DdJt7IzXTzpCSno9NCw6B7VfN3GgHVabmn6IE9Uz
         6jcIFnLgGIdQA+ib6vQ2IePl1HeGXS1GHOCbdXryBTwq+2hoq38nWY4ITLFlIebJoWKv
         rehg==
X-Gm-Message-State: APjAAAXfF2ZCSZ2eYV5bup8pVH+gujDQcl/sClidJ6vEejSxoVIUfSqw
        fPosH4UwS8+17e+8ZXmHI6jwSTwfhRupjfTov2EnwP2q
X-Google-Smtp-Source: APXvYqyv+U7PmVuoZEWqbE0OCphFCzdsjZzBs/s4NdFXJn5FftuQoZDpTU4MFamfrwanBWtF28h9zgwg0GBks5esaMo=
X-Received: by 2002:a5e:a712:: with SMTP id b18mr14582760iod.220.1563004641338;
 Sat, 13 Jul 2019 00:57:21 -0700 (PDT)
MIME-Version: 1.0
References: <15B09F895BF9AE09.30352@groups.io>
In-Reply-To: <15B09F895BF9AE09.30352@groups.io>
From:   Alexandre Mergnat <amergnat@baylibre.com>
Date:   Sat, 13 Jul 2019 09:57:10 +0200
Message-ID: <CAFGrd9pHGF6hQpcD7+PGQGvUDt2nFdGei=GYCiW_cCsK5Jkv2g@mail.gmail.com>
Subject: Fwd: [PATCH v4 0/3] Add PAT9125 optical tracker driver
Cc:     devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
To:     unlisted-recipients:; (no To-header on input)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

PixArt Imaging PAT9125 is a miniature low power optical navigation chip
using LASER light source enabling digital surface tracking.

This device driver use IIO API to provide punctual and/or buffered data.
The data is a relative position from where start the device on X and Y
axis, depend on CPI (Counts Per Inch) resolution setting chosen.

The device support CPI configuration through IIO interface.

This patchset :
- Update vendor prefix
- Add the bindings for this device
- Add the device driver
- Add directory for optical tracker devices

Change since v3:
- Replace delta value by relative position
- Improve write protected reg function by removing print log and obvious
  returns
- Handle error in postenable buffer function

Change since v2:
- Fix typo
- Add constructor webpage and datasheet in commit message
- Use BIT() macro for define bit mask
- Remove shift from IIO channel spec structure
- Replace IIO_LE by IIO_CPU from IIO channel spec structure
- Replace memcpy() by cast (s32)
- Rename "pat9125_trig_try_reen" to "pat9125_trig_try_reenable"
- Add carriage return (\n) at the end of each "dev_err" function
- Remove "iio_trigger_unregister" in case of "iio_trigger_register" fail,
  register function already manage it
- Remove log which print device name in case of successful initialization
- Fix enabled IRQ flag warning during nested IRQ thread
- Improve retry algo now based on status register
- Remove "ts", "motion_detected" and "buffer_mode" from pat9125_data
  structure
- Rename all "ot" directories to "position"
- Polling sample through IIO_CHAN_INFO_RAW now return position value
  (relative to the position at initialization time) instead of delta
  position
- Clean iio_buffer_setup_ops structure by removing NULL pointer.
- Use devm_iio_ function for all init functions and then delete
  "pat9125_remove"
- Move device_register at the end of probe function
- Replace MODULE_PARM_DESC by IIO_SCALE to set axis resolution (CPI)

Change since v1:
- Fix typo
- Rename some defines / variables
- Remove I2C client from driver structure
- Change type of delta_x and delta_y from s16 to s32 to simplify signed
  operations
- Add module parameter for axis resolution
- Replace "IIO_MOD_X_AND_Y" by "IIO_MOD_X" and "IIO_MOD_Y"
- Add sign extension macro
- Improve read value algorithm to avoid data loss
- Implement a trigger handler function which can work with any IIO
  trigger, independently of it own GPIO IRQ, to match with IIO
  requirement/behaviour
- Replace iio push event function by iio trigger poll in GPIO IRQ handler
- Use triggered_buffer helpers to replace kfifo use, setup buffer,
  implement enable/disable setup buffer operations, IIO trigger
  allocation and re-enable operations
- Remove useless "goto"
- Change GPIO IRQ handler from planified thread to IRQ thread
- Change GPIO IRQ trigger from low level and one shot to falling edge
- Add device unregister and buffer cleanup to driver remove function

Alexandre Mergnat (3):
  dt-bindings: Add pixart vendor
  dt-bindings: iio: position: Add docs pat9125
  iio: Add PAT9125 optical tracker sensor

 .../bindings/iio/position/pat9125.txt         |  18 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 drivers/iio/Kconfig                           |   1 +
 drivers/iio/Makefile                          |   1 +
 drivers/iio/position/Kconfig                  |  18 +
 drivers/iio/position/Makefile                 |   6 +
 drivers/iio/position/pat9125.c                | 506 ++++++++++++++++++
 7 files changed, 552 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/position/pat9125.txt
 create mode 100644 drivers/iio/position/Kconfig
 create mode 100644 drivers/iio/position/Makefile
 create mode 100644 drivers/iio/position/pat9125.c

--
2.17.1


-=-=-=-=-=-=-=-=-=-=-=-
Groups.io Links: You receive all messages sent to this group.

View/Reply Online (#161): https://groups.io/g/baylibre-upstreaming/message/161
Mute This Topic: https://groups.io/mt/32440226/1769967
Group Owner: baylibre-upstreaming+owner@groups.io
Unsubscribe: https://groups.io/g/baylibre-upstreaming/unsub
[amergnat@baylibre.com]
-=-=-=-=-=-=-=-=-=-=-=-
