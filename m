Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 26AE236038
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2019 17:20:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728187AbfFEPUS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Jun 2019 11:20:18 -0400
Received: from mail-lf1-f66.google.com ([209.85.167.66]:42777 "EHLO
        mail-lf1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728089AbfFEPUS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Jun 2019 11:20:18 -0400
Received: by mail-lf1-f66.google.com with SMTP id y13so19381948lfh.9
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2019 08:20:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=73MKzC4eufncyXFtj8U83qgAHAhmUvAHte32wW78vmw=;
        b=hpOcLqjAwkX3ykkfqCztHfm6aGxIz7fn7L0oqCkC76Im4ykJ6lBzzY41L7vrcKqZly
         tAkwxw3S/tZ16YJIe7ZOgan4wow09wYZkEqcow898ftNBJGND/2Vd5dz4LFrtHTVvLwW
         bcyWlTkrNQbONzk/2Mp0ASXPPbrjyOAjTFg8ltLV03bYyiBhcUvftNaO0YDfyoJ5J59R
         4Dwi+qVVxTN1rY4NycOrKCpI5WcXJezPbc4nrCV9tYrb9S9u+6RlsHxDd94uCHkhl7qV
         q/cJ2R8E2ANuM0FRppBCPwru6WOkURnVYnKzX7Hs2mcKAeGW3w4as5hdQrE5HH+XLoTr
         vGnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=73MKzC4eufncyXFtj8U83qgAHAhmUvAHte32wW78vmw=;
        b=rGS+6enUn/8ASRkQY7sTiDMFEsbdvL1FoWVW4GcRe99MAWTzGIglXqbjiajBhI4VQ9
         lRb5BZkxQb3WJzUDquT3g3M0Hc8IwkIsAGxkAIjnGRRv2ALVlV+D6UOw1Sg6g3+fkq0a
         MDxPkFeuhHqR2fPMWKoZG9nXOXOFdGEjlrrQ5MlfxCr7/OgCHjIqQLEUyPZpgxDhDrij
         IDZffAmtxPiNuV4ntngVzCh74hiQrG7jH5oRC1Qq9DM7+53klaZa6mTiEwaiEdWPC9Rm
         fXd7EmZTGnLhNqAIww82/Oo8zrGDV4v/3Wx9DBmWUx2q6+1xZzbYV6EuGpN5tCU1gPd8
         GyyA==
X-Gm-Message-State: APjAAAXdwv5jg+a5E+ozcCFi9RNlvundfx+2YrEKNTqiDgbuBkdqhVUN
        uZNwqbOAVD+CRUuD+jeco4NyK/hUiDDJi13g6Xc=
X-Google-Smtp-Source: APXvYqwG8Cw5ekYUpbTPhxvYYmYC7pjq7c/owRl1TZ7nz1kgesZgYvlQFPHKCjDQkm/UNmlGYywIavqEowzngZ+kmgM=
X-Received: by 2002:a19:5044:: with SMTP id z4mr19882205lfj.80.1559748016651;
 Wed, 05 Jun 2019 08:20:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190601070718.26971-1-pbrobinson@gmail.com> <20190601070718.26971-4-pbrobinson@gmail.com>
In-Reply-To: <20190601070718.26971-4-pbrobinson@gmail.com>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Wed, 5 Jun 2019 12:20:07 -0300
Message-ID: <CAOMZO5C7gZ1RR8DHKsJUTTZ2iCZGUa7N3KooVFjsAvnytX7EnQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] ARM: dts: imx6sx-udoo-neo: add bluetooth config to uart3
To:     Peter Robinson <pbrobinson@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jun 1, 2019 at 4:07 AM Peter Robinson <pbrobinson@gmail.com> wrote:
>
> This updates the WL1831 bluetooth to use the serial serdev driver
> interface.
>
> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>

Reviewed-by: Fabio Estevam <festevam@gmail.com>
