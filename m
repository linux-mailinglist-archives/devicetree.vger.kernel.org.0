Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 615EA3C6C5
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2019 10:58:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2404815AbfFKI52 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jun 2019 04:57:28 -0400
Received: from mail-ed1-f65.google.com ([209.85.208.65]:40390 "EHLO
        mail-ed1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2403989AbfFKI52 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jun 2019 04:57:28 -0400
Received: by mail-ed1-f65.google.com with SMTP id k8so4246329eds.7
        for <devicetree@vger.kernel.org>; Tue, 11 Jun 2019 01:57:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=bTkOEfoVS8xqoBdJMHWo3E+Rkaj2bpqidMUiZcDnoAk=;
        b=ZiTDkJRVzn+jc565v456AsNS1x9g3BjkYr7za4w5jSGUMvN0zRkNbwrjz+WKcjgJ7G
         nVEabfR7lwPxQPzOWNyhTaNeCZNmuZbiS/yoZmcFwLZx8+TklX/CEVM6W8dFxldKtroS
         fKKE1lLtvvPaX/DCq4LqhJjtJN0r4j+0DpEZc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=bTkOEfoVS8xqoBdJMHWo3E+Rkaj2bpqidMUiZcDnoAk=;
        b=VIBsh5nv34Nivmn6nrWtnCdf3hh8FMuUHB9Ub5lsWwpsJH93f5DwYIl8rsknl/W7XG
         Cf8+TU5wkSOjfx9gNvLbYe9ZwvknDcnCgmWvFBo+GNWldb86BzfE9eMYvCpgQYhgoF8j
         e0JCiyKnXuNUkODzNY/i/TBaRUZLEQE7IjARBPAZmCOYhDr6uQPhBGNDdIpnUW6lDJ9k
         /FdfWxRsBeM7yw9ezfzoZiQPiNvPkJrjDcuQCkdMRtNoUgrUZgVt6vEY8jKvlSX54Msy
         UqgzHg+ejhp8aRrI4CtZYK8bBDgZyy0vbBjkW6hJVa5rasjzTClIiTQMqluv21p0m4tr
         MLcw==
X-Gm-Message-State: APjAAAWU0e2qvqzv453tj79HKk55G5gYKxl5hDqjoAy2yqhXX0cqvc2C
        +5bw7/AjksyMcZeea+iEbnmhVQ==
X-Google-Smtp-Source: APXvYqyYSiI8MCmhIFP5093eoXLHoiUXmUjorUOjoDyQgA+DoU3k97SYd9dqfm+MFflJC285PU1vqQ==
X-Received: by 2002:a05:6402:8d7:: with SMTP id d23mr37696956edz.17.1560243445858;
        Tue, 11 Jun 2019 01:57:25 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
        by smtp.gmail.com with ESMTPSA id m3sm3498364edi.33.2019.06.11.01.57.24
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 11 Jun 2019 01:57:25 -0700 (PDT)
Date:   Tue, 11 Jun 2019 10:57:22 +0200
From:   Daniel Vetter <daniel@ffwll.ch>
To:     Derek Basehore <dbasehore@chromium.org>
Cc:     linux-kernel@vger.kernel.org,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Sean Paul <sean@poorly.run>,
        Jani Nikula <jani.nikula@linux.intel.com>,
        Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
        Rodrigo Vivi <rodrigo.vivi@intel.com>,
        CK Hu <ck.hu@mediatek.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        intel-gfx@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Subject: Re: [PATCH 3/5] drm/panel: Add attach/detach callbacks
Message-ID: <20190611085722.GX21222@phenom.ffwll.local>
Mail-Followup-To: Derek Basehore <dbasehore@chromium.org>,
        linux-kernel@vger.kernel.org,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@linux.ie>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Sean Paul <sean@poorly.run>,
        Jani Nikula <jani.nikula@linux.intel.com>,
        Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
        Rodrigo Vivi <rodrigo.vivi@intel.com>, CK Hu <ck.hu@mediatek.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        intel-gfx@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
References: <20190611040350.90064-1-dbasehore@chromium.org>
 <20190611040350.90064-4-dbasehore@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190611040350.90064-4-dbasehore@chromium.org>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 10, 2019 at 09:03:48PM -0700, Derek Basehore wrote:
> This adds the attach/detach callbacks. These are for setting up
> internal state for the connector/panel pair that can't be done at
> probe (since the connector doesn't exist) and which don't need to be
> repeatedly done for every get/modes, prepare, or enable callback.
> Values such as the panel orientation, and display size can be filled
> in for the connector.
> 
> Signed-off-by: Derek Basehore <dbasehore@chromium.org>
> ---
>  drivers/gpu/drm/drm_panel.c | 14 ++++++++++++++
>  include/drm/drm_panel.h     |  4 ++++
>  2 files changed, 18 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
> index 3b689ce4a51a..72f67678d9d5 100644
> --- a/drivers/gpu/drm/drm_panel.c
> +++ b/drivers/gpu/drm/drm_panel.c
> @@ -104,12 +104,23 @@ EXPORT_SYMBOL(drm_panel_remove);
>   */
>  int drm_panel_attach(struct drm_panel *panel, struct drm_connector *connector)
>  {
> +	int ret;
> +
>  	if (panel->connector)
>  		return -EBUSY;
>  
>  	panel->connector = connector;
>  	panel->drm = connector->dev;
>  
> +	if (panel->funcs->attach) {
> +		ret = panel->funcs->attach(panel);
> +		if (ret < 0) {
> +			panel->connector = NULL;
> +			panel->drm = NULL;
> +			return ret;
> +		}
> +	}

Why can't we just implement this in the drm helpers for everyone, by e.g.
storing a dt node in drm_panel? Feels a bit overkill to have these new
hooks here.

Also, my understanding is that this dt stuff is supposed to be
standardized, so this should work.
-Daniel

> +
>  	return 0;
>  }
>  EXPORT_SYMBOL(drm_panel_attach);
> @@ -128,6 +139,9 @@ EXPORT_SYMBOL(drm_panel_attach);
>   */
>  int drm_panel_detach(struct drm_panel *panel)
>  {
> +	if (panel->funcs->detach)
> +		panel->funcs->detach(panel);
> +
>  	panel->connector = NULL;
>  	panel->drm = NULL;
>  
> diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
> index 13631b2efbaa..e136e3a3c996 100644
> --- a/include/drm/drm_panel.h
> +++ b/include/drm/drm_panel.h
> @@ -37,6 +37,8 @@ struct display_timing;
>   * struct drm_panel_funcs - perform operations on a given panel
>   * @disable: disable panel (turn off back light, etc.)
>   * @unprepare: turn off panel
> + * @detach: detach panel->connector (clear internal state, etc.)
> + * @attach: attach panel->connector (update internal state, etc.)
>   * @prepare: turn on panel and perform set up
>   * @enable: enable panel (turn on back light, etc.)
>   * @get_modes: add modes to the connector that the panel is attached to and
> @@ -70,6 +72,8 @@ struct display_timing;
>  struct drm_panel_funcs {
>  	int (*disable)(struct drm_panel *panel);
>  	int (*unprepare)(struct drm_panel *panel);
> +	void (*detach)(struct drm_panel *panel);
> +	int (*attach)(struct drm_panel *panel);
>  	int (*prepare)(struct drm_panel *panel);
>  	int (*enable)(struct drm_panel *panel);
>  	int (*get_modes)(struct drm_panel *panel);
> -- 
> 2.22.0.rc2.383.gf4fbbf30c2-goog
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
