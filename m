Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9CFF52D1940
	for <lists+devicetree@lfdr.de>; Mon,  7 Dec 2020 20:17:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725877AbgLGTQY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Dec 2020 14:16:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725774AbgLGTQX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Dec 2020 14:16:23 -0500
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com [IPv6:2607:f8b0:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90024C06179C
        for <devicetree@vger.kernel.org>; Mon,  7 Dec 2020 11:15:37 -0800 (PST)
Received: by mail-pf1-x441.google.com with SMTP id w6so11040319pfu.1
        for <devicetree@vger.kernel.org>; Mon, 07 Dec 2020 11:15:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=R281r86foH4X6REmvNo1bWa35rW491WPz1BS3w8uDtE=;
        b=h/mR90QN7U002D2Eg3T2GQrffXHyFuVCfTsDraTJiviMXMaclWXZWB/8nEmllhxw4N
         XAwTRDv6/nfrVdP40TClyN9/+07T3iuxZ4P4F2nz0Uy6qbKO7qLVEgkK9vD03T4h9fGi
         4WSVPQyqMGY8TGMaSzFP3Us/0JzLWRFTSdomBlZrxEKXIP5/MHnopT/fRABDIunUZqg9
         NUsj+KV4EmYcX7jwb4b7rfuZn9XOrwSzdTSkvqnfCyVMEeVjG9oy06f+8UqIn0ojg3W9
         7vq58ouwpUTO05r1hY1StSUfpfJx55mTecSiP6jZNVgXw7/98pH4IxD92V7JOza05z3s
         2mCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=R281r86foH4X6REmvNo1bWa35rW491WPz1BS3w8uDtE=;
        b=KtNtyNevafWL6BfATOMgzclhoHDXAtCuCDPYQf+L4SUDfnI0tN8GR74rjq8nJ78bAa
         YPUuAnt39SsPDTpN/iZmYMrTOGednILpaxszKGOLkjFYqLv1duewEMsB0nzDggUXx3FW
         vLyI9aqC/5W9NlBlPd/26U3BNNGgJZJ6VA1oO9iCWWpYfYUdxtW0KyEDwePHbmFDPCjF
         nXN5dcOaXv65OD9kac9JJ/9QRwAPaPQkK1lUcaTqod3RleZQ7lX9nklextwM6q3qfH+5
         Em//MnepjxpPXI24aDNoh9FFgHBpvLrObQ4xQUbUTtdouIJo3iBMxnQ/8/yBtQm3vEPd
         bBug==
X-Gm-Message-State: AOAM533ZIQMYxElAeVlI5bvCzMIWbxCEUwD1WbyN8oHg52Evux42nFMb
        nxXZFdgdsl9rE5b1jax3SaIf+g==
X-Google-Smtp-Source: ABdhPJxsPHdCiXs0qC3DtPPvQxXD5rQIR9X6Yp/ZstsZeVJbY3nmLjIaQmRfifjK4MJzBYv5cGyNzA==
X-Received: by 2002:a65:4c87:: with SMTP id m7mr19491064pgt.75.1607368537114;
        Mon, 07 Dec 2020 11:15:37 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id w12sm15134149pfn.136.2020.12.07.11.15.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Dec 2020 11:15:36 -0800 (PST)
From:   Kevin Hilman <khilman@baylibre.com>
To:     linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Christian Hewitt <christianshewitt@gmail.com>
Subject: Re: [PATCH] arm64: dts: meson: minor fixups for Khadas VIM/VIM2 dts
Date:   Mon,  7 Dec 2020 11:15:32 -0800
Message-Id: <160736852894.39684.13019581328411383803.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201203061605.9603-1-christianshewitt@gmail.com>
References: <20201203061605.9603-1-christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 3 Dec 2020 06:16:05 +0000, Christian Hewitt wrote:
> Reorder the VIM/VIM2 includes/bindings to follow the format of other dts
> in the Amlogic tree and remove a stray empty line in the VIM2 dts.

Applied, thanks!

[1/1] arm64: dts: meson: minor fixups for Khadas VIM/VIM2 dts
      commit: c993c4e84369acf5686a6f345ebb0efb0107f73e

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>
