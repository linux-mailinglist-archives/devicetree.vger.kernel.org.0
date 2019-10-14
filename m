Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6D4D5D6862
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2019 19:23:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731347AbfJNRX1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Oct 2019 13:23:27 -0400
Received: from mail-oi1-f195.google.com ([209.85.167.195]:36656 "EHLO
        mail-oi1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726637AbfJNRX0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Oct 2019 13:23:26 -0400
Received: by mail-oi1-f195.google.com with SMTP id k20so14397075oih.3
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2019 10:23:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=qJCcCwWiFIxJcw2Jdg9V+O1M8ZjIoFh7ZOsXdBxCzq0=;
        b=DRE8w4sfgptm3b29SaP72g/A2lqbydqWQlS6O+ckLhavF4/03bH5jaJQXDYq6HXwuV
         CiLWfJTwp7cr84cLF5exxx+sbHfPCaQGvztQcIg4V+Dsai7LL9uWkGfKiufq7EBIaZJn
         Lqmwc9JtCfTNAmAqmHGYVyasAGpoWnOrr2JnINMUTCTUWNcG04ikp3ygzYhKI7My4eKR
         2qtZtPzvoHbDhz/2oIMr2pZywUGOtPce/q5N/KCL+ESpIMiiKo+oL7QwJDpBzoblepyY
         mAwfPvutOnKa1l2p3fgRXojTf3SDkzNGi9eLnmqt5NVyUFHtrPO/cgtDBMO+pb3W54jF
         BnFA==
X-Gm-Message-State: APjAAAXTE5Thj6eGhzTrf6JlscYpvj+p40ioDrM1EeNA/74ZgS5WNgKl
        jKcxTI3L+GFeTbyGnOsQS0j3ofE=
X-Google-Smtp-Source: APXvYqyl8C+G6gF0tXpJKNiR3JY4RW32++v32wyk+wIsOY3IBCJi6VPS3rnrwjCHvo8VjvycF/inUQ==
X-Received: by 2002:aca:36d5:: with SMTP id d204mr24591658oia.51.1571073804360;
        Mon, 14 Oct 2019 10:23:24 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id 21sm5229311oin.26.2019.10.14.10.23.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2019 10:23:23 -0700 (PDT)
Date:   Mon, 14 Oct 2019 12:23:22 -0500
From:   Rob Herring <robh@kernel.org>
To:     Tzung-Bi Shih <tzungbi@google.com>
Cc:     broonie@kernel.org, alsa-devel@alsa-project.org,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        enric.balletbo@collabora.com, bleung@google.com,
        gwendal@google.com, drinkcat@google.com, cychiang@google.com,
        dgreid@google.com, tzungbi@google.com
Subject: Re: [PATCH v3 06/10] ASoC: dt-bindings: cros_ec_codec: add SHM
 bindings
Message-ID: <20191014172322.GA16336@bogus>
References: <20191014102022.236013-1-tzungbi@google.com>
 <20191014180059.06.I0df85fe54162426e31f60a589d9b461c65df2faa@changeid>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191014180059.06.I0df85fe54162426e31f60a589d9b461c65df2faa@changeid>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 14 Oct 2019 18:20:18 +0800, Tzung-Bi Shih wrote:
> - Add "reg" for binding to shared memory exposed by EC.
> - Add "memory-region" for binding to memory region shared by AP.
> 
> Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
> ---
>  .../bindings/sound/google,cros-ec-codec.txt   | 20 +++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
