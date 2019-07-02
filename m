Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0A1495CB1F
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2019 10:11:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728833AbfGBIKd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Jul 2019 04:10:33 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:43370 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728679AbfGBIKc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Jul 2019 04:10:32 -0400
Received: by mail-wr1-f67.google.com with SMTP id p13so16614391wru.10
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2019 01:10:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yQvFLY/IGcdAwWsBuNGxABc1MrG/sBdj2yTY8HMsOyA=;
        b=VB52+/PtxfgbVZZLgrOZg7aQDmVQcdvsPsqYr3oTx1ihZODOXKCh0XGtTfTjN6YPhc
         wGwd4a9rEiv8UgHkrRl8F73a9G+tSOS4PYwZ/2le5JwMP9MnidD3xltf3mUYL2IwbdjQ
         SP193tXdQgo6qiEW/dniG/51JRX6hUzMSxwIeJBKbOjIF/DVDVUDa8g7WGUq+YCnZdpI
         og2BedTqjCE/2YCOtvZm5M7wl1HFJ/hTYtFTrBSD6SBTvBYEMay7CstxZNQIpZ6S/MUm
         +uY9Ow41PHc/3unM7fQCccPO7ZaWxaQtrZF5pTigPrxzU1ZHEDFL6q4ek47xXH+3+mfy
         NUMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yQvFLY/IGcdAwWsBuNGxABc1MrG/sBdj2yTY8HMsOyA=;
        b=WmU0MykyCXuGwP5eeTNrMWh+xdJya5FyU15Sdq4Ts5Q5SL/ddY7UrqxExEjBnzuvmo
         K87hpYPGUOWUMH3eLN3WX4z8Cytp3+6AaXeXYYhz3n8Mk6nm8iPLcm8U1uK5su3W1RIY
         OqALo4Uw8rXoc5yKZDrxUnSaG8sVyBf6u68wo0mXZh0UwlOuYuG73IYhctHf0PgZ3Ahs
         SjxwrdTRqBwuUfxDwq5/8tdOZspuiy7e+iMPuo1UQNzSboQygnbE55O+4vCtynXrQG40
         WcnB6lG294G20x57H6eyrQaWfzAm7RGaPKBh4cDNiLSO6MywblGa/rwPJgQSAcw3cM8y
         M2kA==
X-Gm-Message-State: APjAAAV78YYDY1jPKDEzR/W3GzR3SCm4TUn6Ci37PY7751dZaG4j1Y5M
        fT6ev11MUf1LjqIp4pLEH9w5FGXuY5k=
X-Google-Smtp-Source: APXvYqzzM1irAnKYi4Zg0DLLzyDAHFeASvIOtmDV2pI5kvdSaEcZuL1Ba2KGrecc573o0TBJYvzOAA==
X-Received: by 2002:a5d:5450:: with SMTP id w16mr13266170wrv.128.1562055030738;
        Tue, 02 Jul 2019 01:10:30 -0700 (PDT)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id e4sm1608859wme.16.2019.07.02.01.10.29
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 02 Jul 2019 01:10:30 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     robh+dt@kernel.org, broonie@kernel.org
Cc:     bgoswami@codeaurora.org, vkoul@kernel.org,
        devicetree@vger.kernel.org, lgirdwood@gmail.com,
        mark.rutland@arm.com, alsa-devel@alsa-project.org,
        srini@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH 0/6] ASoC: Add support to WCD9340/WCD9341 codec
Date:   Tue,  2 Jul 2019 09:09:14 +0100
Message-Id: <20190702080920.22623-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset adds support to Qualcomm WCD9340/WCD9341 Codec which
is a standalone Hi-Fi audio codec IC.
This codec supports both I2S/I2C and SLIMbus audio interfaces.
On slimbus interface it supports two data lanes; 16 Tx ports
and 8 Rx ports. It has Five DACs and seven dedicated interpolators,
Multibutton headset control (MBHC), Active noise cancellation,
Sidetone paths, MAD (mic activity detection) and codec processing engine.
It supports Class-H differential earpiece out and stereo single
ended headphones out.
This codec also has integrated SoundWire controller.
Patchset for this is already sent for review at
https://lwn.net/Articles/790651/
    
This patchset has been tested on SDM845 based DragonBoard DB845c with WSA881x
smart speaker amplifiers via soundwire and 4 DMICs.

Thanks,
srini

Srinivas Kandagatla (6):
  ASoC: dt-bindings: add dt bindings for WCD9340/WCD9341 audio codec
  ASoC: wcd934x: add support to wcd9340/wcd9341 codec
  ASoC: wcd934x: add basic controls
  ASoC: wcd934x: add playback dapm widgets
  ASoC: wcd934x: add capture dapm widgets
  ASoC: wcd934x: add audio routings

 .../bindings/sound/qcom,wcd934x.txt           |  188 +
 sound/soc/codecs/Kconfig                      |   10 +
 sound/soc/codecs/Makefile                     |    2 +
 sound/soc/codecs/wcd934x.c                    | 5979 +++++++++++++++++
 sound/soc/codecs/wcd934x.h                    |  426 ++
 5 files changed, 6605 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,wcd934x.txt
 create mode 100644 sound/soc/codecs/wcd934x.c
 create mode 100644 sound/soc/codecs/wcd934x.h

-- 
2.21.0

