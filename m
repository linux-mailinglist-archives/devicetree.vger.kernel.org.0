Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 61DB950A707
	for <lists+devicetree@lfdr.de>; Thu, 21 Apr 2022 19:25:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1390589AbiDUR2N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Apr 2022 13:28:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1390752AbiDUR2M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Apr 2022 13:28:12 -0400
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com [IPv6:2607:f8b0:4864:20::d31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09AA414028
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 10:25:22 -0700 (PDT)
Received: by mail-io1-xd31.google.com with SMTP id c125so6030873iof.9
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 10:25:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=dDKNw7Tbp4E5sck+EPVLRaBthgkgWXlJ1Og628kR41o=;
        b=jOnh9HW8hXRlqGr3NNhBOayl7OHXLGD6sROy8v3bFehknEy8aHCEZBVB7jXjnbX7xo
         6GaZP8vsRunpl5nQeDnJ2k4qvbPdIi3a8Xgk2B9m9CmGfOjZSUeVvdEch2EDycn35AWc
         G/L5nEoiIzhfg3q/0rJNSereapagElXYfkqB76VxAfrra4DCeeaA94FzKJiIh/mvX/dt
         DVpQ+iGdzhgZAL0H+dDjAIdJEL+zNmK/G0FRRohR1RH4hqWToFp4E1Zxpnif9rFjc/xa
         OqFY5wz0JtM/c/MRAtWDoyvKWU+dRKMIAUvJciieh0nu0yvjkVX7pQSQbsXYOoTQvbKe
         RuJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dDKNw7Tbp4E5sck+EPVLRaBthgkgWXlJ1Og628kR41o=;
        b=oZAbvW9V0ejD1PZyH1roBTRbTdFisorblvJktUhQW6FAAF9odyja0QO19By5+uZwy0
         obnmbQKQTl+ojBy8KfhHjoRDAoOlbrAlo1yngdU5QupRXkt2lBcC6/W15I4hY/f++U4h
         0CemxofH1gn7wb81Aw3HC7BW0NOkeSuo/mmxceVAqPKj3lJALWJsu/4MHMIwJ1Wpav9+
         dYuJJY2IHFgdTO06oxCJ547gsmMIZzObWmfqmsWmRMMRuOflfGI0kagt3a4PyLIytksb
         JpSGR4Pxs4qZK1P1MSs4hzhH/J23PlUb1veyPHS72pJcjg7mgXTvSwqZzJu5MbsOE7jW
         Ej0A==
X-Gm-Message-State: AOAM533Vc0nNgJ1nNk8LTjqo1+5aYe635dRotKbrLPSt4+nTWZf87rOM
        ORC9ubDvvWKUiGNWEMrkpxGj2THKaot06QSf
X-Google-Smtp-Source: ABdhPJwSoiuYTaTMmsHnHE4j2KU1RpXI8sKACaNfIGMUyuYL1WAVIvSDft2/SwB/thDDORxIcv4Cyw==
X-Received: by 2002:a05:6638:b1a:b0:311:4aa1:6c36 with SMTP id a26-20020a0566380b1a00b003114aa16c36mr377460jab.281.1650561921247;
        Thu, 21 Apr 2022 10:25:21 -0700 (PDT)
Received: from localhost.localdomain (cpe-65-29-252-111.wi.res.rr.com. [65.29.252.111])
        by smtp.gmail.com with ESMTPSA id o16-20020a92c690000000b002cbf7f76878sm10806260ilg.6.2022.04.21.10.25.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Apr 2022 10:25:21 -0700 (PDT)
From:   Daniel Kaehn <kaehndan@gmail.com>
To:     tiwai@suse.com
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        Daniel Kaehn <kaehndan@gmail.com>
Subject: [PATCH v2 2/2] Add generic serial MIDI driver using serial bus API
Date:   Thu, 21 Apr 2022 12:24:27 -0500
Message-Id: <20220421172427.703231-3-kaehndan@gmail.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220421172427.703231-1-kaehndan@gmail.com>
References: <20220421172427.703231-1-kaehndan@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Generic serial MIDI driver adding support for using serial devices
compatible with the serial bus as raw MIDI devices, allowing using
additional serial devices not compatible with the existing
serial-u16550 driver. Supports only setting standard serial baudrates on
the underlying serial device; however, the underlying serial device can
be configured so that a requested 38.4 kBaud is actually the standard MIDI
31.25 kBaud. Supports DeviceTree configuration.

Signed-off-by: Daniel Kaehn <kaehndan@gmail.com>
---

One ugly portion in the code I wanted to point out, but didn't find a
'nice' way of solving. `snd_serial_generic_output_write` is called to
read from ALSA's output MIDI buffer and write to the serdev_device's
input buffer. While copying directly from the former to the later would
be desirable for performance, I assume violating the abstraction would
never be permissable. The current implementation creates an internal buffer of
an arbitrary size (currently 256) and copies there as an intermediate
step. Any advice on how to make this better is appreciated.

 sound/drivers/Kconfig          |  17 ++
 sound/drivers/Makefile         |   2 +
 sound/drivers/serial-generic.c | 344 +++++++++++++++++++++++++++++++++
 3 files changed, 363 insertions(+)
 create mode 100644 sound/drivers/serial-generic.c

diff --git a/sound/drivers/Kconfig b/sound/drivers/Kconfig
index ca4cdf666f82..edea507fb8e7 100644
--- a/sound/drivers/Kconfig
+++ b/sound/drivers/Kconfig
@@ -165,6 +165,23 @@ config SND_SERIAL_U16550
 	  To compile this driver as a module, choose M here: the module
 	  will be called snd-serial-u16550.
 
+config SND_SERIAL_GENERIC
+	tristate "Generic serial MIDI driver"
+	depends on SERIAL_DEV_BUS
+	select SND_RAWMIDI
+	help
+	  To include support for mapping generic serial devices as raw
+	  ALSA MIDI devices, say Y here. The driver only supports setting
+	  the serial port to standard baudrates. To attain the standard MIDI
+	  baudrate of 31.25 kBaud, configure the clock of the underlying serial
+	  device so that a requested 38.4 kBaud will result in the standard speed.
+
+	  Use this devicetree binding to configure serial port mapping
+	  <file:Documentation/devicetree/bindings/sound/serialmidi.yaml>
+
+	  To compile this driver as a module, choose M here: the module
+	  will be called snd-serial-generic.
+
 config SND_MPU401
 	tristate "Generic MPU-401 UART driver"
 	select SND_MPU401_UART
diff --git a/sound/drivers/Makefile b/sound/drivers/Makefile
index c0fe4eccdaef..b60303180a1b 100644
--- a/sound/drivers/Makefile
+++ b/sound/drivers/Makefile
@@ -10,6 +10,7 @@ snd-mtpav-objs := mtpav.o
 snd-mts64-objs := mts64.o
 snd-portman2x4-objs := portman2x4.o
 snd-serial-u16550-objs := serial-u16550.o
+snd-serial-generic-objs := serial-generic.o
 snd-virmidi-objs := virmidi.o
 
 # Toplevel Module Dependency
@@ -17,6 +18,7 @@ obj-$(CONFIG_SND_DUMMY) += snd-dummy.o
 obj-$(CONFIG_SND_ALOOP) += snd-aloop.o
 obj-$(CONFIG_SND_VIRMIDI) += snd-virmidi.o
 obj-$(CONFIG_SND_SERIAL_U16550) += snd-serial-u16550.o
+obj-$(CONFIG_SND_SERIAL_GENERIC) += snd-serial-generic.o
 obj-$(CONFIG_SND_MTPAV) += snd-mtpav.o
 obj-$(CONFIG_SND_MTS64) += snd-mts64.o
 obj-$(CONFIG_SND_PORTMAN2X4) += snd-portman2x4.o
diff --git a/sound/drivers/serial-generic.c b/sound/drivers/serial-generic.c
new file mode 100644
index 000000000000..1fa0b3206847
--- /dev/null
+++ b/sound/drivers/serial-generic.c
@@ -0,0 +1,344 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ *   serial-generic.c
+ *   Copyright (c) by Daniel Kaehn <kaehndan@gmail.com
+ *   Based on serial-u16550.c by Jaroslav Kysela <perex@perex.cz>,
+ *		                 Isaku Yamahata <yamahata@private.email.ne.jp>,
+ *		                 George Hansper <ghansper@apana.org.au>,
+ *		                 Hannu Savolainen
+ *
+ * Generic serial MIDI driver using the serdev serial bus API for hardware interaction
+ */
+
+#include <linux/err.h>
+#include <linux/init.h>
+#include <linux/interrupt.h>
+#include <linux/io.h>
+#include <linux/ioport.h>
+#include <linux/module.h>
+#include <linux/of_device.h>
+#include <linux/serdev.h>
+#include <linux/serial_reg.h>
+#include <linux/slab.h>
+
+#include <sound/core.h>
+#include <sound/rawmidi.h>
+#include <sound/initval.h>
+
+MODULE_DESCRIPTION("MIDI serial");
+MODULE_LICENSE("GPL");
+
+#define SERIAL_MODE_NOT_OPENED		(0)
+#define SERIAL_MODE_INPUT_OPEN		(1 << 0)
+#define SERIAL_MODE_OUTPUT_OPEN	(1 << 1)
+#define SERIAL_MODE_INPUT_TRIGGERED	(1 << 2)
+#define SERIAL_MODE_OUTPUT_TRIGGERED	(1 << 3)
+
+struct snd_serial_generic {
+	struct serdev_device *serdev;
+
+	struct snd_card *card;
+	struct snd_rawmidi *rmidi;
+	struct snd_rawmidi_substream *midi_output;
+	struct snd_rawmidi_substream *midi_input;
+
+	int filemode;		/* open status of file */
+	unsigned int baudrate;
+};
+
+
+static int snd_serial_generic_ensure_serdev_open(struct snd_serial_generic *drvdata)
+{
+	int err = 0;
+	unsigned int actual_baud;
+
+	if (drvdata->filemode == SERIAL_MODE_NOT_OPENED) {
+		err = serdev_device_open(drvdata->serdev);
+		if (err < 0)
+			return err;
+		if (drvdata->baudrate) {
+			actual_baud = serdev_device_set_baudrate(drvdata->serdev,
+				drvdata->baudrate);
+			if (actual_baud != drvdata->baudrate) {
+				snd_printk(KERN_WARNING "snd-serial-generic: requested %d baud for %s but it was actually set to %d\n",
+					drvdata->baudrate, drvdata->card->shortname, actual_baud);
+			}
+		}
+	}
+	return 0;
+}
+
+static int snd_serial_generic_input_open(struct snd_rawmidi_substream *substream)
+{
+	int err = 0;
+	struct snd_serial_generic *drvdata = substream->rmidi->private_data;
+
+	snd_printd("snd-serial-generic: DEBUG - Opening input for card %s\n",
+		drvdata->card->shortname);
+
+	err = snd_serial_generic_ensure_serdev_open(drvdata);
+	if (err < 0) {
+		snd_printk(KERN_WARNING "snd-serial-generic: failed to open input for card %s",
+			drvdata->card->shortname);
+		return err;
+	}
+
+	drvdata->filemode |= SERIAL_MODE_INPUT_OPEN;
+	drvdata->midi_input = substream;
+	return 0;
+}
+
+static int snd_serial_generic_input_close(struct snd_rawmidi_substream *substream)
+{
+	struct snd_serial_generic *drvdata = substream->rmidi->private_data;
+
+	drvdata->filemode &= ~SERIAL_MODE_INPUT_OPEN;
+	drvdata->midi_input = NULL;
+	if (drvdata->filemode == SERIAL_MODE_NOT_OPENED)
+		serdev_device_close(drvdata->serdev);
+	return 0;
+}
+
+static void snd_serial_generic_input_trigger(struct snd_rawmidi_substream *substream,
+					int up)
+{
+	struct snd_serial_generic *drvdata = substream->rmidi->private_data;
+
+	if (up)
+		drvdata->filemode |= SERIAL_MODE_INPUT_TRIGGERED;
+	else
+		drvdata->filemode &= ~SERIAL_MODE_INPUT_TRIGGERED;
+}
+
+static int snd_serial_generic_output_open(struct snd_rawmidi_substream *substream)
+{
+	struct snd_serial_generic *drvdata = substream->rmidi->private_data;
+	int err;
+
+	snd_printd("snd-serial-generic: DEBUG - Opening output for card %s\n",
+		drvdata->card->shortname);
+
+	err = snd_serial_generic_ensure_serdev_open(drvdata);
+	if (err < 0) {
+		snd_printk(KERN_WARNING "snd-serial-generic: failed to open input for card %s",
+			drvdata->card->shortname);
+		return err;
+	}
+
+	drvdata->filemode |= SERIAL_MODE_OUTPUT_OPEN;
+	drvdata->midi_output = substream;
+	return 0;
+};
+
+static int snd_serial_generic_output_close(struct snd_rawmidi_substream *substream)
+{
+	struct snd_serial_generic *drvdata = substream->rmidi->private_data;
+
+	drvdata->filemode &= ~SERIAL_MODE_OUTPUT_OPEN;
+	drvdata->midi_output = NULL;
+	if (drvdata->filemode == SERIAL_MODE_NOT_OPENED)
+		serdev_device_close(drvdata->serdev);
+	return 0;
+};
+
+#define INTERNAL_BUF_SIZE 256
+
+static void snd_serial_generic_output_write(struct snd_rawmidi_substream *substream)
+{
+	static char buf[INTERNAL_BUF_SIZE];
+	int num_bytes;
+	struct snd_serial_generic *drvdata = substream->rmidi->private_data;
+
+	num_bytes = snd_rawmidi_transmit_peek(substream, buf, INTERNAL_BUF_SIZE);
+	num_bytes = serdev_device_write_buf(drvdata->serdev, buf, num_bytes);
+	snd_rawmidi_transmit_ack(substream, num_bytes);
+}
+
+static void snd_serial_generic_output_trigger(struct snd_rawmidi_substream *substream,
+					 int up)
+{
+	struct snd_serial_generic *drvdata = substream->rmidi->private_data;
+
+	if (up)
+		drvdata->filemode |= SERIAL_MODE_OUTPUT_TRIGGERED;
+	else
+		drvdata->filemode &= ~SERIAL_MODE_OUTPUT_TRIGGERED;
+	if (up)
+		snd_serial_generic_output_write(substream);
+}
+
+static const struct snd_rawmidi_ops snd_serial_generic_output = {
+	.open =		snd_serial_generic_output_open,
+	.close =	snd_serial_generic_output_close,
+	.trigger =	snd_serial_generic_output_trigger,
+};
+
+static const struct snd_rawmidi_ops snd_serial_generic_input = {
+	.open =		snd_serial_generic_input_open,
+	.close =	snd_serial_generic_input_close,
+	.trigger =	snd_serial_generic_input_trigger,
+};
+
+static int snd_serial_generic_receive_buf(struct serdev_device *serdev,
+				const unsigned char *buf, size_t count)
+{
+	int ret = 0;
+	struct snd_serial_generic *drvdata = serdev_device_get_drvdata(serdev);
+
+	ret = snd_rawmidi_receive(drvdata->midi_input, buf, count);
+	return ret < 0 ? 0 : ret;
+}
+
+static void snd_serial_generic_write_wakeup(struct serdev_device *serdev)
+{
+	struct snd_serial_generic *drvdata = serdev_device_get_drvdata(serdev);
+
+	if (!snd_rawmidi_transmit_empty(drvdata->midi_output))
+		snd_serial_generic_output_write(drvdata->midi_output);
+}
+
+
+static const struct serdev_device_ops snd_serial_generic_serdev_device_ops = {
+	.receive_buf = snd_serial_generic_receive_buf,
+	.write_wakeup = snd_serial_generic_write_wakeup
+};
+
+static int snd_serial_generic_create(struct serdev_device *serdev,
+				struct snd_card *card,
+				struct snd_serial_generic **rserialmidi)
+{
+	struct snd_serial_generic *drvdata;
+	int err;
+
+	drvdata = devm_kzalloc(card->dev, sizeof(*drvdata), GFP_KERNEL);
+	if (!drvdata)
+		return -ENOMEM;
+
+	drvdata->serdev = serdev;
+	drvdata->card = card;
+
+	if (serdev->dev.of_node) {
+		err = of_property_read_u32(serdev->dev.of_node, "speed", &drvdata->baudrate);
+		if (err < 0) {
+			snd_printk(KERN_WARNING "snd-serial-generic: MIDI device reading of speed DT param failed with error %d, using default baudrate of serial device\n",
+						err);
+			drvdata->baudrate = 0;
+		}
+	} else {
+		snd_printk(KERN_INFO "snd-serial-generic: MIDI device speed DT param not set for %s, using default baudrate of serial device\n",
+			drvdata->card->shortname);
+		drvdata->baudrate = 0;
+	}
+
+	if (rserialmidi)
+		*rserialmidi = drvdata;
+	return 0;
+}
+
+static void snd_serial_generic_substreams(struct snd_rawmidi_str *stream, int dev_num)
+{
+	struct snd_rawmidi_substream *substream;
+
+	list_for_each_entry(substream, &stream->substreams, list) {
+		sprintf(substream->name, "Serial MIDI %d-%d", dev_num, substream->number);
+	}
+}
+
+static int snd_serial_generic_rmidi(struct snd_serial_generic *drvdata,
+				int outs, int ins, struct snd_rawmidi **rmidi)
+{
+	struct snd_rawmidi *rrawmidi;
+	int err;
+
+	err = snd_rawmidi_new(drvdata->card, drvdata->card->driver, 0, outs, ins, &rrawmidi);
+	if (err < 0)
+		return err;
+
+	snd_rawmidi_set_ops(rrawmidi, SNDRV_RAWMIDI_STREAM_INPUT,
+				&snd_serial_generic_input);
+	snd_rawmidi_set_ops(rrawmidi, SNDRV_RAWMIDI_STREAM_OUTPUT,
+				&snd_serial_generic_output);
+	strcpy(rrawmidi->name, drvdata->card->shortname);
+
+	snd_serial_generic_substreams(&rrawmidi->streams[SNDRV_RAWMIDI_STREAM_OUTPUT],
+					drvdata->serdev->ctrl->nr);
+	snd_serial_generic_substreams(&rrawmidi->streams[SNDRV_RAWMIDI_STREAM_INPUT],
+					drvdata->serdev->ctrl->nr);
+
+	rrawmidi->info_flags = SNDRV_RAWMIDI_INFO_OUTPUT |
+			       SNDRV_RAWMIDI_INFO_INPUT |
+			       SNDRV_RAWMIDI_INFO_DUPLEX;
+
+	rrawmidi->private_data = drvdata;
+	if (rmidi)
+		*rmidi = rrawmidi;
+	return 0;
+}
+
+static int snd_serial_generic_probe(struct serdev_device *serdev)
+{
+	struct snd_card *card;
+	struct snd_serial_generic *drvdata;
+	int err;
+
+	pr_debug("snd-serial-generic: probe called with:\n\tcontroller number: %d\n",
+		serdev->ctrl->nr);
+
+	err  = snd_devm_card_new(&serdev->dev, SNDRV_DEFAULT_IDX1,
+				SNDRV_DEFAULT_STR1, THIS_MODULE, 0, &card);
+	if (err < 0)
+		return err;
+
+	strcpy(card->driver, "SerialMIDI");
+	sprintf(card->shortname, "SerialMIDI-%d", serdev->ctrl->nr);
+	sprintf(card->longname, "Serial MIDI device at serial%d", serdev->ctrl->nr);
+
+	err = snd_serial_generic_create(serdev, card, &drvdata);
+	if (err < 0)
+		return err;
+
+	err = snd_serial_generic_rmidi(drvdata, 1, 1, &drvdata->rmidi);
+	if (err < 0)
+		return err;
+
+	serdev_device_set_client_ops(serdev, &snd_serial_generic_serdev_device_ops);
+	serdev_device_set_drvdata(drvdata->serdev, drvdata);
+
+	err = snd_card_register(card);
+
+	if (err < 0)
+		return err;
+
+	return 0;
+}
+
+#define SND_SERIAL_GENERIC_DRIVER	"snd-serial-generic"
+
+static const struct of_device_id snd_serial_generic_dt_ids[] = {
+	{ .compatible = "serialmidi" },
+	{},
+};
+
+MODULE_DEVICE_TABLE(of, snd_serial_generic_dt_ids);
+
+static struct serdev_device_driver snd_serial_generic_driver = {
+	.driver	= {
+		.name		= SND_SERIAL_GENERIC_DRIVER,
+		.of_match_table	= of_match_ptr(snd_serial_generic_dt_ids),
+	},
+	.probe	= snd_serial_generic_probe,
+};
+
+static int __init alsa_card_serial_generic_init(void)
+{
+	snd_printk(KERN_INFO "snd-serial-generic: Generic serial-based MIDI device\n");
+	return serdev_device_driver_register(&snd_serial_generic_driver);
+}
+
+static void __exit alsa_card_serial_generic_exit(void)
+{
+	serdev_device_driver_unregister(&snd_serial_generic_driver);
+}
+
+module_init(alsa_card_serial_generic_init)
+module_exit(alsa_card_serial_generic_exit)
-- 
2.35.1

